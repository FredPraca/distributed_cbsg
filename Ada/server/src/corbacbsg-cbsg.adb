pragma Style_Checks ("NM32766");

---------------------------------------------------
--  This file has been generated automatically from
--  ../../../cbsg.idl
--  by IAC (IDL to Ada Compiler) 19.0w (rev. e4bac8d9).
---------------------------------------------------
--  NOTE: If you modify this file by hand, your
--  changes will be lost when you re-run the
--  IDL to Ada compiler.
---------------------------------------------------

with PolyORB.Any.NVList;
with PolyORB.Any;
with PolyORB.Requests;
with PolyORB.Types;
with PolyORB.CORBA_P.Interceptors_Hooks;
with PolyORB.CORBA_P.Exceptions;

package body CorbaCBSG.CBSG is

   createSentence_Result_Name_Ü : constant PolyORB.Types.Identifier :=
     PolyORB.Types.To_PolyORB_String
        ("Result");

   -----------------------------
   -- createSentence_Result_Ü --
   -----------------------------

   function createSentence_Result_Ü return PolyORB.Any.NamedValue is
      pragma Inline (createSentence_Result_Ü);
   begin
      return (Name => createSentence_Result_Name_Ü,
      Argument => CORBA.Internals.Get_Empty_Any
        (CORBA.TC_String),
      Arg_Modes => 0);
   end createSentence_Result_Ü;

   --------------------
   -- createSentence --
   --------------------

   function createSentence
     (Self : Ref)
     return CORBA.String
   is
      Argument_List_Ü : PolyORB.Any.NVList.Ref;
      Result_Ü : CORBA.String;
      pragma Warnings (Off, Result_Ü);
      pragma Suppress (Validity_Check, Result_Ü);
      Arg_CC_Result_Ü_Ü : aliased PolyORB.Any.Content'Class :=
        CORBA.Wrap
           (Result_Ü'Unrestricted_Access);
      Request_Ü : aliased PolyORB.Requests.Request;
      Result_Nv_Ü : PolyORB.Any.NamedValue :=
        createSentence_Result_Ü;
   begin
      if CORBA.Object.Is_Nil
        (CORBA.Object.Ref
           (Self))
      then
         CORBA.Raise_Inv_Objref
           (CORBA.Default_Sys_Member);
      end if;
      --  Create the Argument list
      PolyORB.Any.NVList.Create
        (Argument_List_Ü);
      --  Setting the result value
      PolyORB.Any.Set_Value
        (PolyORB.Any.Get_Container
           (Result_Nv_Ü.Argument).all,
         Arg_CC_Result_Ü_Ü'Unrestricted_Access);
      --  Creating the request
      PolyORB.Requests.Setup_Request
        (Req => Request_Ü,
         Target => CORBA.Object.Internals.To_PolyORB_Ref
           (CORBA.Object.Ref
              (Self)),
         Operation => "createSentence",
         Arg_List => Argument_List_Ü,
         Result => Result_Nv_Ü);
      --  Invoking the request (synchronously or asynchronously)
      PolyORB.CORBA_P.Interceptors_Hooks.Client_Invoke
        (Request_Ü'Access,
         PolyORB.Requests.Flags
           (0));
      --  Raise exception, if needed
      PolyORB.CORBA_P.Exceptions.Request_Raise_Occurrence
        (Request_Ü);
      --  Return value
      return Result_Ü;
   end createSentence;

   createWorkshop_Result_Name_Ü : constant PolyORB.Types.Identifier :=
     PolyORB.Types.To_PolyORB_String
        ("Result");

   -----------------------------
   -- createWorkshop_Result_Ü --
   -----------------------------

   function createWorkshop_Result_Ü return PolyORB.Any.NamedValue is
      pragma Inline (createWorkshop_Result_Ü);
   begin
      return (Name => createWorkshop_Result_Name_Ü,
      Argument => CORBA.Internals.Get_Empty_Any
        (CORBA.TC_String),
      Arg_Modes => 0);
   end createWorkshop_Result_Ü;

   --------------------
   -- createWorkshop --
   --------------------

   function createWorkshop
     (Self : Ref)
     return CORBA.String
   is
      Argument_List_Ü : PolyORB.Any.NVList.Ref;
      Result_Ü : CORBA.String;
      pragma Warnings (Off, Result_Ü);
      pragma Suppress (Validity_Check, Result_Ü);
      Arg_CC_Result_Ü_Ü : aliased PolyORB.Any.Content'Class :=
        CORBA.Wrap
           (Result_Ü'Unrestricted_Access);
      Request_Ü : aliased PolyORB.Requests.Request;
      Result_Nv_Ü : PolyORB.Any.NamedValue :=
        createWorkshop_Result_Ü;
   begin
      if CORBA.Object.Is_Nil
        (CORBA.Object.Ref
           (Self))
      then
         CORBA.Raise_Inv_Objref
           (CORBA.Default_Sys_Member);
      end if;
      --  Create the Argument list
      PolyORB.Any.NVList.Create
        (Argument_List_Ü);
      --  Setting the result value
      PolyORB.Any.Set_Value
        (PolyORB.Any.Get_Container
           (Result_Nv_Ü.Argument).all,
         Arg_CC_Result_Ü_Ü'Unrestricted_Access);
      --  Creating the request
      PolyORB.Requests.Setup_Request
        (Req => Request_Ü,
         Target => CORBA.Object.Internals.To_PolyORB_Ref
           (CORBA.Object.Ref
              (Self)),
         Operation => "createWorkshop",
         Arg_List => Argument_List_Ü,
         Result => Result_Nv_Ü);
      --  Invoking the request (synchronously or asynchronously)
      PolyORB.CORBA_P.Interceptors_Hooks.Client_Invoke
        (Request_Ü'Access,
         PolyORB.Requests.Flags
           (0));
      --  Raise exception, if needed
      PolyORB.CORBA_P.Exceptions.Request_Raise_Occurrence
        (Request_Ü);
      --  Return value
      return Result_Ü;
   end createWorkshop;

   createShortWorkshop_Result_Name_Ü : constant PolyORB.Types.Identifier :=
     PolyORB.Types.To_PolyORB_String
        ("Result");

   ----------------------------------
   -- createShortWorkshop_Result_Ü --
   ----------------------------------

   function createShortWorkshop_Result_Ü return PolyORB.Any.NamedValue is
      pragma Inline (createShortWorkshop_Result_Ü);
   begin
      return (Name => createShortWorkshop_Result_Name_Ü,
      Argument => CORBA.Internals.Get_Empty_Any
        (CORBA.TC_String),
      Arg_Modes => 0);
   end createShortWorkshop_Result_Ü;

   -------------------------
   -- createShortWorkshop --
   -------------------------

   function createShortWorkshop
     (Self : Ref)
     return CORBA.String
   is
      Argument_List_Ü : PolyORB.Any.NVList.Ref;
      Result_Ü : CORBA.String;
      pragma Warnings (Off, Result_Ü);
      pragma Suppress (Validity_Check, Result_Ü);
      Arg_CC_Result_Ü_Ü : aliased PolyORB.Any.Content'Class :=
        CORBA.Wrap
           (Result_Ü'Unrestricted_Access);
      Request_Ü : aliased PolyORB.Requests.Request;
      Result_Nv_Ü : PolyORB.Any.NamedValue :=
        createShortWorkshop_Result_Ü;
   begin
      if CORBA.Object.Is_Nil
        (CORBA.Object.Ref
           (Self))
      then
         CORBA.Raise_Inv_Objref
           (CORBA.Default_Sys_Member);
      end if;
      --  Create the Argument list
      PolyORB.Any.NVList.Create
        (Argument_List_Ü);
      --  Setting the result value
      PolyORB.Any.Set_Value
        (PolyORB.Any.Get_Container
           (Result_Nv_Ü.Argument).all,
         Arg_CC_Result_Ü_Ü'Unrestricted_Access);
      --  Creating the request
      PolyORB.Requests.Setup_Request
        (Req => Request_Ü,
         Target => CORBA.Object.Internals.To_PolyORB_Ref
           (CORBA.Object.Ref
              (Self)),
         Operation => "createShortWorkshop",
         Arg_List => Argument_List_Ü,
         Result => Result_Nv_Ü);
      --  Invoking the request (synchronously or asynchronously)
      PolyORB.CORBA_P.Interceptors_Hooks.Client_Invoke
        (Request_Ü'Access,
         PolyORB.Requests.Flags
           (0));
      --  Raise exception, if needed
      PolyORB.CORBA_P.Exceptions.Request_Raise_Occurrence
        (Request_Ü);
      --  Return value
      return Result_Ü;
   end createShortWorkshop;

   createFinancialReport_Result_Name_Ü : constant PolyORB.Types.Identifier :=
     PolyORB.Types.To_PolyORB_String
        ("Result");

   ------------------------------------
   -- createFinancialReport_Result_Ü --
   ------------------------------------

   function createFinancialReport_Result_Ü return PolyORB.Any.NamedValue is
      pragma Inline (createFinancialReport_Result_Ü);
   begin
      return (Name => createFinancialReport_Result_Name_Ü,
      Argument => CORBA.Internals.Get_Empty_Any
        (CORBA.TC_String),
      Arg_Modes => 0);
   end createFinancialReport_Result_Ü;

   ---------------------------
   -- createFinancialReport --
   ---------------------------

   function createFinancialReport
     (Self : Ref)
     return CORBA.String
   is
      Argument_List_Ü : PolyORB.Any.NVList.Ref;
      Result_Ü : CORBA.String;
      pragma Warnings (Off, Result_Ü);
      pragma Suppress (Validity_Check, Result_Ü);
      Arg_CC_Result_Ü_Ü : aliased PolyORB.Any.Content'Class :=
        CORBA.Wrap
           (Result_Ü'Unrestricted_Access);
      Request_Ü : aliased PolyORB.Requests.Request;
      Result_Nv_Ü : PolyORB.Any.NamedValue :=
        createFinancialReport_Result_Ü;
   begin
      if CORBA.Object.Is_Nil
        (CORBA.Object.Ref
           (Self))
      then
         CORBA.Raise_Inv_Objref
           (CORBA.Default_Sys_Member);
      end if;
      --  Create the Argument list
      PolyORB.Any.NVList.Create
        (Argument_List_Ü);
      --  Setting the result value
      PolyORB.Any.Set_Value
        (PolyORB.Any.Get_Container
           (Result_Nv_Ü.Argument).all,
         Arg_CC_Result_Ü_Ü'Unrestricted_Access);
      --  Creating the request
      PolyORB.Requests.Setup_Request
        (Req => Request_Ü,
         Target => CORBA.Object.Internals.To_PolyORB_Ref
           (CORBA.Object.Ref
              (Self)),
         Operation => "createFinancialReport",
         Arg_List => Argument_List_Ü,
         Result => Result_Nv_Ü);
      --  Invoking the request (synchronously or asynchronously)
      PolyORB.CORBA_P.Interceptors_Hooks.Client_Invoke
        (Request_Ü'Access,
         PolyORB.Requests.Flags
           (0));
      --  Raise exception, if needed
      PolyORB.CORBA_P.Exceptions.Request_Raise_Occurrence
        (Request_Ü);
      --  Return value
      return Result_Ü;
   end createFinancialReport;

   ----------
   -- Is_A --
   ----------

   function Is_A
     (Self : Ref;
      Logical_Type_Id : PolyORB.Std.String)
     return CORBA.Boolean
   is
   begin
      return (False
         or else (Is_A
           (Logical_Type_Id)
            or else CORBA.Object.Is_A
              (CORBA.Object.Ref
                 (Self),
               Logical_Type_Id)));
   end Is_A;

   ----------
   -- Is_A --
   ----------

   function Is_A
     (Logical_Type_Id : PolyORB.Std.String)
     return CORBA.Boolean
   is
   begin
      return ((CORBA.Is_Equivalent
        (Logical_Type_Id,
         CorbaCBSG.CBSG.Repository_Id)
         or else CORBA.Is_Equivalent
           (Logical_Type_Id,
            "IDL:omg.org/CORBA/Object:1.0"))
         or else False);
   end Is_A;

end CorbaCBSG.CBSG;
