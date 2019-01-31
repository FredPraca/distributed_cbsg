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
with PolyORB.Any;
with PolyORB.Types;

package CorbaCBSG.Helper is

   TC_timestamped_Sentence : CORBA.TypeCode.Object;

   function From_Any
     (Item : CORBA.Any)
     return CorbaCBSG.timestamped_Sentence;

   function To_Any
     (Item : CorbaCBSG.timestamped_Sentence)
     return CORBA.Any;

   
   package Internals is

      type Ptr_Ü_timestamped_Sentence is
        access all CorbaCBSG.timestamped_Sentence;

      type Content_Ü_timestamped_Sentence is
        new PolyORB.Any.Aggregate_Content with record
            V : Ptr_Ü_timestamped_Sentence;
         end record;

      function Get_Aggregate_Element
        (Acc : not null access Content_Ü_timestamped_Sentence;
         Tc : PolyORB.Any.TypeCode.Object_Ptr;
         Index : PolyORB.Types.Unsigned_Long;
         Mech : not null access PolyORB.Any.Mechanism)
        return PolyORB.Any.Content'Class;

      function Get_Aggregate_Count
        (Acc : Content_Ü_timestamped_Sentence)
        return PolyORB.Types.Unsigned_Long;

      procedure Set_Aggregate_Count
        (Acc : in out Content_Ü_timestamped_Sentence;
         Count : PolyORB.Types.Unsigned_Long);

      function Unchecked_Get_V
        (Acc : not null access Content_Ü_timestamped_Sentence)
        return PolyORB.Types.Address;

      function Clone
        (Acc : Content_Ü_timestamped_Sentence;
         Into : PolyORB.Any.Content_Ptr := null)
        return PolyORB.Any.Content_Ptr;

      procedure Finalize_Value
        (Acc : in out Content_Ü_timestamped_Sentence);

      function Wrap
        (X : access CorbaCBSG.timestamped_Sentence)
        return PolyORB.Any.Content'Class;

      procedure Initialize_timestamped_Sentence;

   end Internals;

end CorbaCBSG.Helper;
