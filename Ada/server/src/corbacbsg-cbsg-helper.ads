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

with CORBA;
pragma Elaborate_All (CORBA);
with CORBA.Object;

package CorbaCBSG.CBSG.Helper is

   TC_CBSG : CORBA.TypeCode.Object;

   function From_Any
     (Item : CORBA.Any)
     return CorbaCBSG.CBSG.Ref;

   function To_Any
     (Item : CorbaCBSG.CBSG.Ref)
     return CORBA.Any;

   function Unchecked_To_Ref
     (The_Ref : CORBA.Object.Ref'Class)
     return CorbaCBSG.CBSG.Ref;

   function To_Ref
     (The_Ref : CORBA.Object.Ref'Class)
     return CorbaCBSG.CBSG.Ref;

   
   package Internals is

      procedure Initialize_CBSG;

   end Internals;

end CorbaCBSG.CBSG.Helper;
