pragma Style_Checks ("NM32766");
pragma Wide_Character_Encoding (Brackets);

---------------------------------------------------
--  This file has been generated automatically from
--  cbsg.idl
--  by IAC (IDL to Ada Compiler) 20.0w (rev. 90136cd4).
---------------------------------------------------
--  NOTE: If you modify this file by hand, your
--  changes will be lost when you re-run the
--  IDL to Ada compiler.
---------------------------------------------------

--  Source: cbsg.idl

--  module CorbaCBSG
--  {
--    struct timestamped_Sentence {
--      long timestamp;
--      string sentence;
--    };
--    
--    interface CBSG
--    {
--      timestamped_Sentence createTimestampedSentence();
--      string createSentence();
--      string createWorkshop();
--      string createShortWorkshop();
--      string createFinancialReport();
--    };
--  };

--  End source: cbsg.idl -- 17 lines

---------------------------------------------------

with PolyORB.Std;
with CORBA;
pragma Elaborate_All (CORBA);

package CorbaCBSG is

   Repository_Id : constant PolyORB.Std.String :=
     "IDL:CorbaCBSG:1.0";

   type timestamped_Sentence is
     record
         timestamp : CORBA.Long;
         sentence : CORBA.String;
      end record;

   timestamped_Sentence_Repository_Id : constant PolyORB.Std.String :=
     "IDL:CorbaCBSG/timestamped_Sentence:1.0";

end CorbaCBSG;
