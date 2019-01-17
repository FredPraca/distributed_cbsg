pragma Style_Checks ("NM32766");
pragma Wide_Character_Encoding (Brackets);

---------------------------------------------------
--  This file has been generated automatically from
--  ../../cbsg.idl
--  by IAC (IDL to Ada Compiler) 19.0w (rev. e4bac8d9).
---------------------------------------------------
--  NOTE: If you modify this file by hand, your
--  changes will be lost when you re-run the
--  IDL to Ada compiler.
---------------------------------------------------

--  Source: ../../cbsg.idl

--  module CorbaCBSG
--  {

--    interface CBSG
--    {
--      string createSentence();
--      string createWorkshop();
--      string createShortWorkshop();
--      string createFinancialReport();
--    };
--  };

--  End source: ../../cbsg.idl -- 12 lines

---------------------------------------------------

with PolyORB.Std;

package CorbaCBSG is

   Repository_Id : constant PolyORB.Std.String :=
     "IDL:CorbaCBSG:1.0";

end CorbaCBSG;
