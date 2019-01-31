with Ada.Command_Line;
with Ada.Text_IO;
with CORBA.ORB;

with CORBA.Object;

with CorbaCBSG.CBSG;
with CorbaCBSG.CBSG.Helper;
with CorbaCBSG; use CorbaCBSG;

>>>>>>> master
with PolyORB.Setup.Client;
pragma Warnings (Off, PolyORB.Setup.Client);

with PolyORB.CORBA_P.Naming_Tools;

procedure Client is
   use Ada.Command_Line;
   use Ada.Text_IO;
   use type CORBA.String;
 
   Rcvd_Bullshits : CORBA.String;
   Timestamped_Bullshit : timestamped_Sentence;

   Bullshit_Generator : CorbaCBSG.CBSG.Ref;
   
   Obj_Name : constant String := "/cbsg/generator";
   
   Obj : CORBA.Object.Ref;
   
   -- Allow to get the parameters according to the CORBA Standard
   -- For example, InitialRef
   Argv : CORBA.ORB.Arg_List := CORBA.ORB.Command_Line_Arguments;

begin
   CORBA.ORB.Init (CORBA.ORB.To_CORBA_String ("ORB"), Argv);
   
   --  Locate the object through the Naming Service
   Obj := PolyORB.CORBA_P.Naming_Tools.Locate (Obj_Name);
   
   Bullshit_Generator := CorbaCBSG.CBSG.Helper.To_Ref (obj);
    
   --  Check that the reference is correct
   if CorbaCBSG.CBSG.Is_Nil(Bullshit_Generator) then
      Put_Line ("main : cannot invoke on a nil reference");
      return;
   end if;

   --  Call a method
   Rcvd_Bullshits := CorbaCBSG.CBSG.createSentence(Bullshit_Generator);
   Put_Line ("The generator said : " & CORBA.To_Standard_String (Rcvd_Bullshits));
 
   Timestamped_Bullshit := CorbaCBSG.CBSG.createTimestampedSentence(Bullshit_Generator);
   Put_Line ("At " & Timestamped_Bullshit.timestamp'Image
             & ", the generator said : " 
             & CORBA.to_Standard_String (Timestamped_Bullshit.sentence));   
exception
   when E : CORBA.Transient =>
      declare
         Memb : CORBA.System_Exception_Members;
      begin
         CORBA.Get_Members (E, Memb);
         Put ("received exception transient, minor");
         Put (CORBA.Unsigned_Long'Image (Memb.Minor));
         Put (", completion status: ");
         Put_Line (CORBA.Completion_Status'Image (Memb.Completed));
      end;
end Client;
