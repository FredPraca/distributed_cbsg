with Ada.Exceptions;
with Ada.Text_IO; use Ada.Text_IO;
 
with CORBA.Impl;
with CORBA.Object;
with CORBA.ORB;

with CorbaCBSG.CBSG.Impl;
 
with PolyORB.CORBA_P.CORBALOC;
with PolyORB.CORBA_P.Naming_Tools;
with PolyORB.CORBA_P.Server_Tools;

with PortableServer;

-- Allow to specify how PolyORB should work
with PolyORB.Setup.Thread_Per_Request_Server;
pragma Warnings (Off, PolyORB.Setup.Thread_Per_Request_Server);
 
procedure Server is
begin
   
   declare
      -- Allow to get the parameters according to the CORBA Standard
      -- For example, InitialRef
      Argv : CORBA.ORB.Arg_List := CORBA.ORB.Command_Line_Arguments;
 
   begin
      -- Init of our bus named ORB
      CORBA.ORB.Init (CORBA.ORB.To_CORBA_String ("ORB"), Argv);

      --  Then perform all the stuff related to RootPOA
      PolyORB.CORBA_P.Server_Tools.Activate_Server;
   
      declare
      
         --  We declare a reference to our distributed object
         Ref : CORBA.Object.Ref;
 
         --  And its implementation
         Obj : constant CORBA.Impl.Object_Ptr := new CorbaCBSG.CBSG.Impl.Object;
	 
         --  And finally its name
         Obj_Name : constant String := "/cbsg/generator";
	 
      begin
         --  We create a reference on our object (the servant) to expose it to the outside world
         PolyORB.CORBA_P.Server_Tools.Initiate_Servant (S => PortableServer.Servant (Obj),
                                                        R => Ref);
 
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
	 
         --  Register it to Naming service
         PolyORB.CORBA_P.Naming_Tools.Register (Obj_Name, Ref, Rebind => True);
	 
         Put_Line ("Generator rebound");
	      
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
