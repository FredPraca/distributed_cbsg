pragma Style_Checks ("NM32766");

---------------------------------------------------
--  This file has been generated automatically from
--  cbsg.idl
--  by IAC (IDL to Ada Compiler) 19.0w (rev. e4bac8d9).
---------------------------------------------------
--  NOTE: If you modify this file by hand, your
--  changes will be lost when you re-run the
--  IDL to Ada compiler.
---------------------------------------------------

with CorbaCBSG.CBSG.Impl;
with CORBA;
pragma Elaborate_All (CORBA);
with PolyORB.Any;
with CORBA.ServerRequest;
with CORBA.NVList;
with PolyORB.CORBA_P.IR_Hooks;
with CORBA.Object;
with CORBA.Object.Helper;
with PolyORB.CORBA_P.Domain_Management;
with CorbaCBSG_CBSG_Hash;
with PolyORB.Std;
with PortableServer;
with CORBA.ORB;
with PolyORB.CORBA_P.Exceptions;
with PolyORB.Qos.Exception_Informations;
with PolyORB.Utils.Strings;
with PolyORB.Utils.Strings.Lists;
with PolyORB.Initialization;

package body CorbaCBSG.CBSG.Skel is

   N_Operations : constant PolyORB.Std.Natural :=
     9;

   type String_Ptr is
     access PolyORB.Std.String;

   Invoke_Db : array (0 .. (N_Operations
      - 1)) of String_Ptr :=
     (others => null);

   procedure Register_Procedure
     (Operation_Name : PolyORB.Std.String);

   ------------------------
   -- Register_Procedure --
   ------------------------

   procedure Register_Procedure
     (Operation_Name : PolyORB.Std.String)
   is
      Index_Ü : PolyORB.Std.Natural;
      Invoke_Name_Access : String_Ptr;
   begin
      Index_Ü :=
        CorbaCBSG_CBSG_Hash.Hash
           (Operation_Name);
      if (Invoke_Db
        (Index_Ü)
         /= null)
      then
         raise Program_Error;
      end if;
      Invoke_Name_Access :=
        new PolyORB.Std.String'
           (Operation_Name);
      Invoke_Db
        (Index_Ü) :=
        Invoke_Name_Access;
   end Register_Procedure;

   procedure Invoke
     (Self : PortableServer.Servant;
      Request : CORBA.ServerRequest.Object_Ptr);

   ------------
   -- Invoke --
   ------------

   procedure Invoke
     (Self : PortableServer.Servant;
      Request : CORBA.ServerRequest.Object_Ptr)
   is
      Operation_Ü : constant PolyORB.Std.String :=
        CORBA.To_Standard_String
           (CORBA.ServerRequest.Operation
              (Request.all));
      Argument_List_Ü : CORBA.NVList.Ref;
      Index_Ü : PolyORB.Std.Natural;
      Invoke_Name_Access : String_Ptr;

      procedure Invoke_createSentence;

      ---------------------------
      -- Invoke_createSentence --
      ---------------------------

      procedure Invoke_createSentence is
         Result_Ü : CORBA.String;
         pragma Warnings (Off, Result_Ü);
         pragma Suppress (Validity_Check, Result_Ü);
         Arg_CC_Result_Ü_Ü : aliased PolyORB.Any.Content'Class :=
           CORBA.Wrap
              (Result_Ü'Unrestricted_Access);
         Arg_Any_Result_Ü_Ü : constant CORBA.Any :=
           CORBA.Internals.Get_Wrapper_Any
              (CORBA.TC_String,
               Arg_CC_Result_Ü_Ü'Unchecked_Access);
      begin
         --  Processing request
         CORBA.ServerRequest.Arguments
           (Request,
            Argument_List_Ü);
         --  Call Implementation
         Result_Ü :=
           CorbaCBSG.CBSG.Impl.createSentence
              (CorbaCBSG.CBSG.Impl.Object'Class
                 (Self.all)'Access);
         --  Setting the result
         CORBA.ServerRequest.Set_Result
           (Request,
            Arg_Any_Result_Ü_Ü);
         CORBA.NVList.Internals.Clone_Out_Args
           (Argument_List_Ü);
      end Invoke_createSentence;

      procedure Invoke_createWorkshop;

      ---------------------------
      -- Invoke_createWorkshop --
      ---------------------------

      procedure Invoke_createWorkshop is
         Result_Ü : CORBA.String;
         pragma Warnings (Off, Result_Ü);
         pragma Suppress (Validity_Check, Result_Ü);
         Arg_CC_Result_Ü_Ü : aliased PolyORB.Any.Content'Class :=
           CORBA.Wrap
              (Result_Ü'Unrestricted_Access);
         Arg_Any_Result_Ü_Ü : constant CORBA.Any :=
           CORBA.Internals.Get_Wrapper_Any
              (CORBA.TC_String,
               Arg_CC_Result_Ü_Ü'Unchecked_Access);
      begin
         --  Processing request
         CORBA.ServerRequest.Arguments
           (Request,
            Argument_List_Ü);
         --  Call Implementation
         Result_Ü :=
           CorbaCBSG.CBSG.Impl.createWorkshop
              (CorbaCBSG.CBSG.Impl.Object'Class
                 (Self.all)'Access);
         --  Setting the result
         CORBA.ServerRequest.Set_Result
           (Request,
            Arg_Any_Result_Ü_Ü);
         CORBA.NVList.Internals.Clone_Out_Args
           (Argument_List_Ü);
      end Invoke_createWorkshop;

      procedure Invoke_createShortWorkshop;

      --------------------------------
      -- Invoke_createShortWorkshop --
      --------------------------------

      procedure Invoke_createShortWorkshop is
         Result_Ü : CORBA.String;
         pragma Warnings (Off, Result_Ü);
         pragma Suppress (Validity_Check, Result_Ü);
         Arg_CC_Result_Ü_Ü : aliased PolyORB.Any.Content'Class :=
           CORBA.Wrap
              (Result_Ü'Unrestricted_Access);
         Arg_Any_Result_Ü_Ü : constant CORBA.Any :=
           CORBA.Internals.Get_Wrapper_Any
              (CORBA.TC_String,
               Arg_CC_Result_Ü_Ü'Unchecked_Access);
      begin
         --  Processing request
         CORBA.ServerRequest.Arguments
           (Request,
            Argument_List_Ü);
         --  Call Implementation
         Result_Ü :=
           CorbaCBSG.CBSG.Impl.createShortWorkshop
              (CorbaCBSG.CBSG.Impl.Object'Class
                 (Self.all)'Access);
         --  Setting the result
         CORBA.ServerRequest.Set_Result
           (Request,
            Arg_Any_Result_Ü_Ü);
         CORBA.NVList.Internals.Clone_Out_Args
           (Argument_List_Ü);
      end Invoke_createShortWorkshop;

      procedure Invoke_createFinancialReport;

      ----------------------------------
      -- Invoke_createFinancialReport --
      ----------------------------------

      procedure Invoke_createFinancialReport is
         Result_Ü : CORBA.String;
         pragma Warnings (Off, Result_Ü);
         pragma Suppress (Validity_Check, Result_Ü);
         Arg_CC_Result_Ü_Ü : aliased PolyORB.Any.Content'Class :=
           CORBA.Wrap
              (Result_Ü'Unrestricted_Access);
         Arg_Any_Result_Ü_Ü : constant CORBA.Any :=
           CORBA.Internals.Get_Wrapper_Any
              (CORBA.TC_String,
               Arg_CC_Result_Ü_Ü'Unchecked_Access);
      begin
         --  Processing request
         CORBA.ServerRequest.Arguments
           (Request,
            Argument_List_Ü);
         --  Call Implementation
         Result_Ü :=
           CorbaCBSG.CBSG.Impl.createFinancialReport
              (CorbaCBSG.CBSG.Impl.Object'Class
                 (Self.all)'Access);
         --  Setting the result
         CORBA.ServerRequest.Set_Result
           (Request,
            Arg_Any_Result_Ü_Ü);
         CORBA.NVList.Internals.Clone_Out_Args
           (Argument_List_Ü);
      end Invoke_createFinancialReport;

      procedure Invoke_Uis_a;

      ------------------
      -- Invoke_Uis_a --
      ------------------

      procedure Invoke_Uis_a is
         Type_Id_Ü : CORBA.String;
         Arg_Name_Type_Id_Ü : constant CORBA.Identifier :=
           CORBA.To_CORBA_String
              ("Type_Id_Ü");
         Argument_Type_Id_Ü : constant CORBA.Any :=
           CORBA.To_Any
              (Type_Id_Ü);
         Result_Ü : CORBA.Boolean;
      begin
         CORBA.NVList.Add_Item
           (Argument_List_Ü,
            Arg_Name_Type_Id_Ü,
            Argument_Type_Id_Ü,
            CORBA.ARG_IN);
         CORBA.ServerRequest.Arguments
           (Request,
            Argument_List_Ü);
         Type_Id_Ü :=
           CORBA.From_Any
              (Argument_Type_Id_Ü);
         Result_Ü :=
           Is_A
              (CORBA.To_Standard_String
                 (Type_Id_Ü));
         CORBA.ServerRequest.Set_Result
           (Request,
            CORBA.To_Any
              (Result_Ü));
      end Invoke_Uis_a;

      procedure Invoke_Uinterface;

      -----------------------
      -- Invoke_Uinterface --
      -----------------------

      procedure Invoke_Uinterface is
      begin
         CORBA.ServerRequest.Arguments
           (Request,
            Argument_List_Ü);
         CORBA.ServerRequest.Set_Result
           (Request,
            CORBA.Object.Helper.To_Any
              (CORBA.Object.Ref
                 (PolyORB.CORBA_P.IR_Hooks.Get_Interface_Definition
                    (CORBA.To_CORBA_String
                       (Repository_Id)))));
      end Invoke_Uinterface;

      procedure Invoke_Udomain_managers;

      -----------------------------
      -- Invoke_Udomain_managers --
      -----------------------------

      procedure Invoke_Udomain_managers is
      begin
         CORBA.ServerRequest.Arguments
           (Request,
            Argument_List_Ü);
         CORBA.ServerRequest.Set_Result
           (Request,
            PolyORB.CORBA_P.Domain_Management.Get_Domain_Managers
              (Self));
      end Invoke_Udomain_managers;

      procedure Invoke_Unon_existent;

      --------------------------
      -- Invoke_Unon_existent --
      --------------------------

      procedure Invoke_Unon_existent is
      begin
         CORBA.ServerRequest.Arguments
           (Request,
            Argument_List_Ü);
         CORBA.ServerRequest.Set_Result
           (Request,
            CORBA.To_Any
              (CORBA.Boolean'
                 (False)));
      end Invoke_Unon_existent;

      procedure Dispatch;

      --------------
      -- Dispatch --
      --------------

      procedure Dispatch is
      begin
         case Index_Ü is
            when 0 =>
               Invoke_createSentence;
            when 1 =>
               Invoke_createWorkshop;
            when 2 =>
               Invoke_createShortWorkshop;
            when 3 =>
               Invoke_createFinancialReport;
            when 5 =>
               Invoke_Uinterface;
            when 6 =>
               Invoke_Udomain_managers;
            when 7
               | 8 =>
               Invoke_Unon_existent;
            when 4 =>
               Invoke_Uis_a;
            pragma Warnings (Off);
            when others =>
               raise Program_Error;
            pragma Warnings (On);

         end case;
      end Dispatch;

   begin
      CORBA.ORB.Create_List
        (0,
         Argument_List_Ü);
      Index_Ü :=
        CorbaCBSG_CBSG_Hash.Hash
           (Operation_Ü);
      Invoke_Name_Access :=
        Invoke_Db
           (Index_Ü);
      begin
         if (Operation_Ü
            = Invoke_Name_Access.all)
         then
            Dispatch;
         else
            CORBA.Raise_Bad_Operation
              (CORBA.Default_Sys_Member);
         end if;
      exception
         when E : others =>
            CORBA.ServerRequest.Set_Exception
              (Request,
               PolyORB.CORBA_P.Exceptions.System_Exception_To_Any
                 (E));
            PolyORB.Qos.Exception_Informations.Set_Exception_Information
              (Request.all,
               E);
      end;
   end Invoke;

   function Servant_Is_A
     (Obj : PortableServer.Servant)
     return Boolean;

   ------------------
   -- Servant_Is_A --
   ------------------

   function Servant_Is_A
     (Obj : PortableServer.Servant)
     return Boolean
   is
   begin
      return (Obj.all
         in CorbaCBSG.CBSG.Impl.Object'Class);
   end Servant_Is_A;

   -----------------------------
   -- Deferred_Initialization --
   -----------------------------

   procedure Deferred_Initialization is
   begin
      PortableServer.Internals.Register_Skeleton
        (CorbaCBSG.CBSG.Repository_Id,
         Servant_Is_A'Access,
         Is_A'Access,
         Invoke'Access);
      Register_Procedure
        ("createSentence");
      Register_Procedure
        ("createWorkshop");
      Register_Procedure
        ("createShortWorkshop");
      Register_Procedure
        ("createFinancialReport");
      Register_Procedure
        ("_is_a");
      Register_Procedure
        ("_interface");
      Register_Procedure
        ("_domain_managers");
      Register_Procedure
        ("_non_existent");
      Register_Procedure
        ("_not_existent");
   end Deferred_Initialization;

begin
   declare
      use PolyORB.Utils.Strings;
      use PolyORB.Utils.Strings.Lists;
   begin
      PolyORB.Initialization.Register_Module
        (PolyORB.Initialization.Module_Info'
           (Name => +"CorbaCBSG.CBSG.Skel",
            Conflicts => PolyORB.Utils.Strings.Lists.Empty,
            Depends => PolyORB.Utils.Strings.Lists.Empty,
            Provides => PolyORB.Utils.Strings.Lists.Empty,
            Implicit => False,
            Init => Deferred_Initialization'Access,
            Shutdown => null));
   end;
end CorbaCBSG.CBSG.Skel;
