pragma Style_Checks ("NM32766");
pragma Wide_Character_Encoding (Brackets);

---------------------------------------------------
--  This file has been generated automatically from
--  cbsg.idl
--  by IAC (IDL to Ada Compiler) 19.0w (rev. e4bac8d9).

with PortableServer;
with CORBA;
pragma Elaborate_All (CORBA);

package CorbaCBSG.CBSG.Impl is

   type Object is
     new PortableServer.Servant_Base with private;

   type Object_Ptr is
     access all Object'Class;
   
   function createTimestampedSentence
     (Self : not null access Object)
     return CorbaCBSG.Timestamped_Sentence;

   function createSentence
     (Self : not null access Object)
     return CORBA.String;

   function createWorkshop
     (Self : not null access Object)
     return CORBA.String;

   function createShortWorkshop
     (Self : not null access Object)
     return CORBA.String;

   function createFinancialReport
     (Self : not null access Object)
     return CORBA.String;

private
   type Object is
     new PortableServer.Servant_Base with record
         --  Insert components to hold the state of the implementation 
         --  object.
         null;
      end record;

end CorbaCBSG.CBSG.Impl;
