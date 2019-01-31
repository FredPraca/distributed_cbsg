pragma Style_Checks ("NM32766");

---------------------------------------------------
--  This file has been generated automatically from
--  cbsg.idl
--  by IAC (IDL to Ada Compiler) 19.0w (rev. e4bac8d9).

with CorbaCBSG.CBSG.Skel;
pragma Unreferenced (CorbaCBSG.CBSG.Skel);

with Corporate_Bullshit;

with Ada.Calendar.Conversions; use Ada.Calendar.Conversions;
with Ada.Calendar;

package body CorbaCBSG.CBSG.Impl is

   package Simple_Generator is new  Corporate_Bullshit(Paragraph_Mark => "",
                                                       Paragraph_End_Mark => "",
                                                       Dialog_Mark => "");
   
   -------------------------------
   -- createTimestampedSentence --
   -------------------------------
   
   function createTimestampedSentence
     (Self : not null access Object)
      return CorbaCBSG.timestamped_Sentence
   is
      Result : CorbaCBSG.Timestamped_Sentence := 
        (Timestamp => CORBA.Long (To_Unix_Time(Ada.Calendar.Clock)), 
         Sentence => CORBA.To_CORBA_String(Simple_Generator.Sentence));
   begin
      return Result;
   end createTimestampedSentence;

   --------------------
   -- createSentence --
   --------------------

   function createSentence
     (Self : not null access Object)
      return CORBA.String
   is
      Generated_Sentence : String := Simple_Generator.Sentence;
   begin
      return CORBA.To_CORBA_String(Generated_Sentence);
   end createSentence;

   --------------------
   -- createWorkshop --
   --------------------

   function createWorkshop
     (Self : not null access Object)
      return CORBA.String
   is
      Generated_Sentence : String := Simple_Generator.Workshop;
   begin
      return CORBA.To_CORBA_String(Generated_Sentence);
   end createWorkshop;

   -------------------------
   -- createShortWorkshop --
   -------------------------

   function createShortWorkshop
     (Self : not null access Object)
      return CORBA.String
   is
      Generated_Sentence : String := Simple_Generator.Short_Workshop;
   begin
      return CORBA.To_CORBA_String(Generated_Sentence);
   end createShortWorkshop;

   ---------------------------
   -- createFinancialReport --
   ---------------------------

   function createFinancialReport
     (Self : not null access Object)
      return CORBA.String
   is
      Generated_Sentence : String := Simple_Generator.Financial_Report;
   begin
      return CORBA.To_CORBA_String(Generated_Sentence);
   end createFinancialReport;

end CorbaCBSG.CBSG.Impl;
