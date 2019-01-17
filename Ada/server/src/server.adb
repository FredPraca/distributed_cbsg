with Ada.Exceptions;
with Ada.Text_IO; use Ada.Text_IO;
 
with CORBA.Impl;
with CORBA.Object;
with CORBA.ORB;
 
with PortableServer.POA.Helper;
with PortableServer.POAManager;
 
with CorbaCBSG.CBSG.Impl;
 
with PolyORB.CORBA_P.CORBALOC;
 
-- Allow to specify how PolyORB should work
with PolyORB.Setup.No_Tasking_Server;
pragma Warnings (Off, PolyORB.Setup.No_Tasking_Server);
 
procedure Server is
begin
 
   declare
      -- Allow to get the parameters according to the CORBA Standard
      -- For example, InitialRef
      Argv : CORBA.ORB.Arg_List := CORBA.ORB.Command_Line_Arguments;
 
   begin
      -- Init of our bus named ORB
      CORBA.ORB.Init (CORBA.ORB.To_CORBA_String ("ORB"), Argv);
 
      declare
	 --  The PortableObjectAdapter is the place we "store" our objects
         Root_POA : PortableServer.POA.Local_Ref;
 
	 --  We declare a reference to our distributed object
         Ref : CORBA.Object.Ref;
 
	 --  And its implementation
         Obj : constant CORBA.Impl.Object_Ptr := new CorbaCBSG.CBSG.Impl.Object;
 
      begin
 
	 --  We get the root POA of our bus
	 --  It's a CORBA interface, so note the use of CORBA String instead of Ada ones
	 --  We then resolve it to an object reference
         Root_POA := PortableServer.POA.Helper.To_Local_Ref
           (CORBA.ORB.Resolve_Initial_References
	      (CORBA.ORB.To_CORBA_String ("RootPOA")));
 
	 --  We start our POA (in fact, the top-level one)
         PortableServer.POAManager.Activate
           (PortableServer.POA.Get_The_POAManager (Root_POA));
 
	 --  We create a reference on our object (the servant) to expose it to the outside world
         Ref := PortableServer.POA.Servant_To_Reference
           (Root_POA, PortableServer.Servant (Obj));
 
	 --  And we display its address, the IOR.
         Put_Line
           ("'"
	      & CORBA.To_Standard_String (CORBA.Object.Object_To_String (Ref))
	      & "'");
         New_Line;
 
         --  And its shorter version, the corbaloc
	 --  unfortunately, corbaloc is not supported by every ORB implementation
         Put_Line
           ("'"
	      & CORBA.To_Standard_String
	      (PolyORB.CORBA_P.CORBALOC.Object_To_Corbaloc (Ref))
	      & "'");
 
         --  Launch the server. CORBA.ORB.Run is supposed to never return,
         --  print a message if it does.
 
         CORBA.ORB.Run;
 
         Put_Line ("ORB main loop terminated!");
      end;
   end;
exception
   --  Of course, we display a message in case of exception
   when E : others =>
      Put_Line
        ("CBSG server raised " & Ada.Exceptions.Exception_Information (E));
      raise;
end Server;
