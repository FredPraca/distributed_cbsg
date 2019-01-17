pragma Style_Checks ("NM32766");
pragma Wide_Character_Encoding (Brackets);

---------------------------------------------------
--  This file has been generated automatically from
--  ../../../cbsg.idl
--  by IAC (IDL to Ada Compiler) 19.0w (rev. e4bac8d9).
---------------------------------------------------
--  NOTE: If you modify this file by hand, your
--  changes will be lost when you re-run the
--  IDL to Ada compiler.
---------------------------------------------------

with CORBA.Object;
with PolyORB.Std;
with CORBA;
pragma Elaborate_All (CORBA);

package CorbaCBSG.CBSG is

   type Ref is
     new CORBA.Object.Ref with null record;

   Repository_Id : constant PolyORB.Std.String :=
     "IDL:CorbaCBSG/CBSG:1.0";

   function createSentence
     (Self : Ref)
     return CORBA.String;

   createSentence_Repository_Id : constant PolyORB.Std.String :=
     "IDL:CorbaCBSG/CBSG/createSentence:1.0";

   function createWorkshop
     (Self : Ref)
     return CORBA.String;

   createWorkshop_Repository_Id : constant PolyORB.Std.String :=
     "IDL:CorbaCBSG/CBSG/createWorkshop:1.0";

   function createShortWorkshop
     (Self : Ref)
     return CORBA.String;

   createShortWorkshop_Repository_Id : constant PolyORB.Std.String :=
     "IDL:CorbaCBSG/CBSG/createShortWorkshop:1.0";

   function createFinancialReport
     (Self : Ref)
     return CORBA.String;

   createFinancialReport_Repository_Id : constant PolyORB.Std.String :=
     "IDL:CorbaCBSG/CBSG/createFinancialReport:1.0";

   function Is_A
     (Self : Ref;
      Logical_Type_Id : PolyORB.Std.String)
     return CORBA.Boolean;

private
   function Is_A
     (Logical_Type_Id : PolyORB.Std.String)
     return CORBA.Boolean;

end CorbaCBSG.CBSG;
