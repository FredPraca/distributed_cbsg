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

   createSentence_Result_Name_� : constant PolyORB.Types.Identifier :=
     PolyORB.Types.To_PolyORB_String
        ("Result");

   -----------------------------
   -- createSentence_Result_� --
   -----------------------------

   function createSentence_Result_� return PolyORB.Any.NamedValue is
      pragma Inline (createSentence_Result_�);
   begin
      return (Name => createSentence_Result_Name_�,
      Argument => CORBA.Internals.Get_Empty_Any
        (CORBA.TC_String),
      Arg_Modes => 0);
   end createSentence_Result_�;

   --------------------
   -- createSentence --
   --------------------

   function createSentence
     (Self : Ref)
     return CORBA.String
   is
      Argument_List_� : PolyORB.Any.NVList.Ref;
      Result_� : CORBA.String;
      pragma Warnings (Off, Result_�);
      pragma Suppress (Validity_Check, Result_�);
      Arg_CC_Result_�_� : aliased PolyORB.Any.Content'Class :=
        CORBA.Wrap
           (Result_�'Unrestricted_Access);
      Request_� : aliased PolyORB.Requests.Request;
      Result_Nv_� : PolyORB.Any.NamedValue :=
        createSentence_Result_�;
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
        (Argument_List_�);
      --  Setting the result value
      PolyORB.Any.Set_Value
        (PolyORB.Any.Get_Container
           (Result_Nv_�.Argument).all,
         Arg_CC_Result_�_�'Unrestricted_Access);
      --  Creating the request
      PolyORB.Requests.Setup_Request
        (Req => Request_�,
         Target => CORBA.Object.Internals.To_PolyORB_Ref
           (CORBA.Object.Ref
              (Self)),
         Operation => "createSentence",
         Arg_List => Argument_List_�,
         Result => Result_Nv_�);
      --  Invoking the request (synchronously or asynchronously)
      PolyORB.CORBA_P.Interceptors_Hooks.Client_Invoke
        (Request_�'Access,
         PolyORB.Requests.Flags
           (0));
      --  Raise exception, if needed
      PolyORB.CORBA_P.Exceptions.Request_Raise_Occurrence
        (Request_�);
      --  Return value
      return Result_�;
   end createSentence;

   createWorkshop_Result_Name_� : constant PolyORB.Types.Identifier :=
     PolyORB.Types.To_PolyORB_String
        ("Result");

   -----------------------------
   -- createWorkshop_Result_� --
   -----------------------------

   function createWorkshop_Result_� return PolyORB.Any.NamedValue is
      pragma Inline (createWorkshop_Result_�);
   begin
      return (Name => createWorkshop_Result_Name_�,
      Argument => CORBA.Internals.Get_Empty_Any
        (CORBA.TC_String),
      Arg_Modes => 0);
   end createWorkshop_Result_�;

   --------------------
   -- createWorkshop --
   --------------------

   function createWorkshop
     (Self : Ref)
     return CORBA.String
   is
      Argument_List_� : PolyORB.Any.NVList.Ref;
      Result_� : CORBA.String;
      pragma Warnings (Off, Result_�);
      pragma Suppress (Validity_Check, Result_�);
      Arg_CC_Result_�_� : aliased PolyORB.Any.Content'Class :=
        CORBA.Wrap
           (Result_�'Unrestricted_Access);
      Request_� : aliased PolyORB.Requests.Request;
      Result_Nv_� : PolyORB.Any.NamedValue :=
        createWorkshop_Result_�;
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
        (Argument_List_�);
      --  Setting the result value
      PolyORB.Any.Set_Value
        (PolyORB.Any.Get_Container
           (Result_Nv_�.Argument).all,
         Arg_CC_Result_�_�'Unrestricted_Access);
      --  Creating the request
      PolyORB.Requests.Setup_Request
        (Req => Request_�,
         Target => CORBA.Object.Internals.To_PolyORB_Ref
           (CORBA.Object.Ref
              (Self)),
         Operation => "createWorkshop",
         Arg_List => Argument_List_�,
         Result => Result_Nv_�);
      --  Invoking the request (synchronously or asynchronously)
      PolyORB.CORBA_P.Interceptors_Hooks.Client_Invoke
        (Request_�'Access,
         PolyORB.Requests.Flags
           (0));
      --  Raise exception, if needed
      PolyORB.CORBA_P.Exceptions.Request_Raise_Occurrence
        (Request_�);
      --  Return value
      return Result_�;
   end createWorkshop;

   createShortWorkshop_Result_Name_� : constant PolyORB.Types.Identifier :=
     PolyORB.Types.To_PolyORB_String
        ("Result");

   ----------------------------------
   -- createShortWorkshop_Result_� --
   ----------------------------------

   function createShortWorkshop_Result_� return PolyORB.Any.NamedValue is
      pragma Inline (createShortWorkshop_Result_�);
   begin
      return (Name => createShortWorkshop_Result_Name_�,
      Argument => CORBA.Internals.Get_Empty_Any
        (CORBA.TC_String),
      Arg_Modes => 0);
   end createShortWorkshop_Result_�;

   -------------------------
   -- createShortWorkshop --
   -------------------------

   function createShortWorkshop
     (Self : Ref)
     return CORBA.String
   is
      Argument_List_� : PolyORB.Any.NVList.Ref;
      Result_� : CORBA.String;
      pragma Warnings (Off, Result_�);
      pragma Suppress (Validity_Check, Result_�);
      Arg_CC_Result_�_� : aliased PolyORB.Any.Content'Class :=
        CORBA.Wrap
           (Result_�'Unrestricted_Access);
      Request_� : aliased PolyORB.Requests.Request;
      Result_Nv_� : PolyORB.Any.NamedValue :=
        createShortWorkshop_Result_�;
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
        (Argument_List_�);
      --  Setting the result value
      PolyORB.Any.Set_Value
        (PolyORB.Any.Get_Container
           (Result_Nv_�.Argument).all,
         Arg_CC_Result_�_�'Unrestricted_Access);
      --  Creating the request
      PolyORB.Requests.Setup_Request
        (Req => Request_�,
         Target => CORBA.Object.Internals.To_PolyORB_Ref
           (CORBA.Object.Ref
              (Self)),
         Operation => "createShortWorkshop",
         Arg_List => Argument_List_�,
         Result => Result_Nv_�);
      --  Invoking the request (synchronously or asynchronously)
      PolyORB.CORBA_P.Interceptors_Hooks.Client_Invoke
        (Request_�'Access,
         PolyORB.Requests.Flags
           (0));
      --  Raise exception, if needed
      PolyORB.CORBA_P.Exceptions.Request_Raise_Occurrence
        (Request_�);
      --  Return value
      return Result_�;
   end createShortWorkshop;

   createFinancialReport_Result_Name_� : constant PolyORB.Types.Identifier :=
     PolyORB.Types.To_PolyORB_String
        ("Result");

   ------------------------------------
   -- createFinancialReport_Result_� --
   ------------------------------------

   function createFinancialReport_Result_� return PolyORB.Any.NamedValue is
      pragma Inline (createFinancialReport_Result_�);
   begin
      return (Name => createFinancialReport_Result_Name_�,
      Argument => CORBA.Internals.Get_Empty_Any
        (CORBA.TC_String),
      Arg_Modes => 0);
   end createFinancialReport_Result_�;

   ---------------------------
   -- createFinancialReport --
   ---------------------------

   function createFinancialReport
     (Self : Ref)
     return CORBA.String
   is
      Argument_List_� : PolyORB.Any.NVList.Ref;
      Result_� : CORBA.String;
      pragma Warnings (Off, Result_�);
      pragma Suppress (Validity_Check, Result_�);
      Arg_CC_Result_�_� : aliased PolyORB.Any.Content'Class :=
        CORBA.Wrap
           (Result_�'Unrestricted_Access);
      Request_� : aliased PolyORB.Requests.Request;
      Result_Nv_� : PolyORB.Any.NamedValue :=
        createFinancialReport_Result_�;
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
        (Argument_List_�);
      --  Setting the result value
      PolyORB.Any.Set_Value
        (PolyORB.Any.Get_Container
           (Result_Nv_�.Argument).all,
         Arg_CC_Result_�_�'Unrestricted_Access);
      --  Creating the request
      PolyORB.Requests.Setup_Request
        (Req => Request_�,
         Target => CORBA.Object.Internals.To_PolyORB_Ref
           (CORBA.Object.Ref
              (Self)),
         Operation => "createFinancialReport",
         Arg_List => Argument_List_�,
         Result => Result_Nv_�);
      --  Invoking the request (synchronously or asynchronously)
      PolyORB.CORBA_P.Interceptors_Hooks.Client_Invoke
        (Request_�'Access,
         PolyORB.Requests.Flags
           (0));
      --  Raise exception, if needed
      PolyORB.CORBA_P.Exceptions.Request_Raise_Occurrence
        (Request_�);
      --  Return value
      return Result_�;
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
