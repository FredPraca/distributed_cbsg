pragma Style_Checks ("NM32766");

---------------------------------------------------
--  This file has been generated automatically from
--  cbsg.idl
--  by IAC (IDL to Ada Compiler) 20.0w (rev. 90136cd4).
---------------------------------------------------
--  NOTE: If you modify this file by hand, your
--  changes will be lost when you re-run the
--  IDL to Ada compiler.
---------------------------------------------------

with Ada.Unchecked_Conversion;
with Ada.Unchecked_Deallocation;
with PolyORB.Std;
with PolyORB.Utils.Strings;
with PolyORB.Utils.Strings.Lists;
with PolyORB.Initialization;

package body CorbaCBSG.Helper is

   
   package body Internals is

      ---------------------------
      -- Get_Aggregate_Element --
      ---------------------------

      function Get_Aggregate_Element
        (Acc : not null access Content_Ü_timestamped_Sentence;
         Tc : PolyORB.Any.TypeCode.Object_Ptr;
         Index : PolyORB.Types.Unsigned_Long;
         Mech : not null access PolyORB.Any.Mechanism)
        return PolyORB.Any.Content'Class
      is
         use type PolyORB.Any.Mechanism;
         pragma Suppress (Validity_Check);
         pragma Unreferenced (Tc);
      begin
         Mech.all :=
           PolyORB.Any.By_Reference;
         case Index is
            when 0 =>
               return CORBA.Wrap
                 (Acc.V.timestamp'Unrestricted_Access);
            when 1 =>
               return CORBA.Wrap
                 (Acc.V.sentence'Unrestricted_Access);
            pragma Warnings (Off);
            when others =>
               raise Constraint_Error;
            pragma Warnings (On);

         end case;
      end Get_Aggregate_Element;

      -------------------------
      -- Get_Aggregate_Count --
      -------------------------

      function Get_Aggregate_Count
        (Acc : Content_Ü_timestamped_Sentence)
        return PolyORB.Types.Unsigned_Long
      is
         pragma Unreferenced (Acc);
      begin
         return 2;
      end Get_Aggregate_Count;

      -------------------------
      -- Set_Aggregate_Count --
      -------------------------

      procedure Set_Aggregate_Count
        (Acc : in out Content_Ü_timestamped_Sentence;
         Count : PolyORB.Types.Unsigned_Long)
      is
      begin
         null;
      end Set_Aggregate_Count;

      ---------------------
      -- Unchecked_Get_V --
      ---------------------

      function Unchecked_Get_V
        (Acc : not null access Content_Ü_timestamped_Sentence)
        return PolyORB.Types.Address
      is
         function To_Address
           is new Ada.Unchecked_Conversion
              (Ptr_Ü_timestamped_Sentence,
               PolyORB.Types.Address);

      begin
         return To_Address
           (Acc.V);
      end Unchecked_Get_V;

      -----------
      -- Clone --
      -----------

      function Clone
        (Acc : Content_Ü_timestamped_Sentence;
         Into : PolyORB.Any.Content_Ptr := null)
        return PolyORB.Any.Content_Ptr
      is
         use type PolyORB.Any.Content_Ptr;
         Target : PolyORB.Any.Content_Ptr;
      begin
         if (Into
            /= null)
         then
            if (Into.all
               not in Content_Ü_timestamped_Sentence)
            then
               return null;
            end if;
            Target :=
              Into;
            Content_Ü_timestamped_Sentence
              (Target.all).V.all :=
              Acc.V.all;
         else
            Target :=
              new Content_Ü_timestamped_Sentence;
            Content_Ü_timestamped_Sentence
              (Target.all).V :=
              new CorbaCBSG.timestamped_Sentence'
                 (Acc.V.all);
         end if;
         return Target;
      end Clone;

      --------------------
      -- Finalize_Value --
      --------------------

      procedure Finalize_Value
        (Acc : in out Content_Ü_timestamped_Sentence)
      is
         procedure Free
           is new Ada.Unchecked_Deallocation
              (CorbaCBSG.timestamped_Sentence,
               Ptr_Ü_timestamped_Sentence);

      begin
         Free
           (Acc.V);
      end Finalize_Value;

      ----------
      -- Wrap --
      ----------

      function Wrap
        (X : access CorbaCBSG.timestamped_Sentence)
        return PolyORB.Any.Content'Class
      is
      begin
         return Content_Ü_timestamped_Sentence'
           (PolyORB.Any.Aggregate_Content with
            V => Ptr_Ü_timestamped_Sentence'
              (X.all'Unchecked_Access));
      end Wrap;

      timestamped_Sentence_Initialized : PolyORB.Std.Boolean :=
        False;

      -------------------------------------
      -- Initialize_timestamped_Sentence --
      -------------------------------------

      procedure Initialize_timestamped_Sentence is
         Name_Ü : constant CORBA.String :=
           CORBA.To_CORBA_String
              ("timestamped_Sentence");
         Id_Ü : constant CORBA.String :=
           CORBA.To_CORBA_String
              ("IDL:CorbaCBSG/timestamped_Sentence:1.0");
         Argument_Name_Ü_timestamp : constant CORBA.String :=
           CORBA.To_CORBA_String
              ("timestamp");
         Argument_Name_Ü_sentence : constant CORBA.String :=
           CORBA.To_CORBA_String
              ("sentence");
      begin
         if not timestamped_Sentence_Initialized
         then
            timestamped_Sentence_Initialized :=
              True;
            CorbaCBSG.Helper.TC_timestamped_Sentence :=
              CORBA.TypeCode.Internals.To_CORBA_Object
                 (PolyORB.Any.TypeCode.Tcf_Struct);
            CORBA.Internals.Add_Parameter
              (TC_timestamped_Sentence,
               CORBA.To_Any
                 (Name_Ü));
            CORBA.Internals.Add_Parameter
              (TC_timestamped_Sentence,
               CORBA.To_Any
                 (Id_Ü));
            CORBA.Internals.Add_Parameter
              (TC_timestamped_Sentence,
               CORBA.To_Any
                 (CORBA.TC_Long));
            CORBA.Internals.Add_Parameter
              (TC_timestamped_Sentence,
               CORBA.To_Any
                 (Argument_Name_Ü_timestamp));
            CORBA.Internals.Add_Parameter
              (TC_timestamped_Sentence,
               CORBA.To_Any
                 (CORBA.TC_String));
            CORBA.Internals.Add_Parameter
              (TC_timestamped_Sentence,
               CORBA.To_Any
                 (Argument_Name_Ü_sentence));
            CORBA.TypeCode.Internals.Disable_Ref_Counting
              (TC_timestamped_Sentence);
            CORBA.TypeCode.Internals.Freeze
              (TC_timestamped_Sentence);
         end if;
      end Initialize_timestamped_Sentence;

   end Internals;

   --------------
   -- From_Any --
   --------------

   function From_Any
     (Item : CORBA.Any)
     return CorbaCBSG.timestamped_Sentence
   is
   begin
      return (timestamp => CORBA.From_Any
        (CORBA.Internals.Get_Aggregate_Element
           (Item,
            CORBA.TC_Long,
            0)),
      sentence => CORBA.From_Any
        (CORBA.Internals.Get_Aggregate_Element
           (Item,
            CORBA.TC_String,
            1)));
   end From_Any;

   ------------
   -- To_Any --
   ------------

   function To_Any
     (Item : CorbaCBSG.timestamped_Sentence)
     return CORBA.Any
   is
      Result : constant CORBA.Any :=
        CORBA.Internals.Get_Empty_Any
           (TC_timestamped_Sentence);
   begin
      PolyORB.Any.Set_Value
        (CORBA.Get_Container
           (Result).all,
         new PolyORB.Any.Content'Class'
           (CorbaCBSG.Helper.Internals.Wrap
              (new CorbaCBSG.timestamped_Sentence'
                 (Item))),
         False);
      return Result;
   end To_Any;

   -----------------------------
   -- Deferred_Initialization --
   -----------------------------

   procedure Deferred_Initialization is
   begin
      CorbaCBSG.Helper.Internals.Initialize_timestamped_Sentence;
   end Deferred_Initialization;

begin
   declare
      use PolyORB.Utils.Strings;
      use PolyORB.Utils.Strings.Lists;
   begin
      PolyORB.Initialization.Register_Module
        (PolyORB.Initialization.Module_Info'
           (Name => +"CorbaCBSG.Helper",
            Conflicts => PolyORB.Utils.Strings.Lists.Empty,
            Depends => +"any"
               & "corba",
            Provides => PolyORB.Utils.Strings.Lists.Empty,
            Implicit => False,
            Init => Deferred_Initialization'Access,
            Shutdown => null));
   end;
end CorbaCBSG.Helper;
