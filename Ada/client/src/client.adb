with Ada.Command_Line;
with Ada.Text_IO;
with CORBA.ORB;
 
with CorbaCBSG.CBSG;
with CorbaCBSG; use CorbaCBSG;

with PolyORB.Setup.Client;
pragma Warnings (Off, PolyORB.Setup.Client);
 
procedure Client is
   use Ada.Command_Line;
   use Ada.Text_IO;
   use type CORBA.String;
 
   Rcvd_Bullshits : CORBA.String;
   Bullshit_Generator : CorbaCBSG.CBSG.Ref;
   Timestamped_Bullshit : timestamped_Sentence;
   
begin
   CORBA.ORB.Initialize ("ORB");
   if Argument_Count not in 1 .. 2 then
      Put_Line
        ("usage: client <IOR_string_from_server>");
      return;
   end if;
 
   --  Get the distributed object reference through its IOR or corbaloc
   CORBA.ORB.String_To_Object
     (CORBA.To_CORBA_String (Ada.Command_Line.Argument (1)), Bullshit_Generator);
 
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
