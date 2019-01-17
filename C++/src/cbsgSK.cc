// This file is generated by omniidl (C++ backend)- omniORB_4_2. Do not edit.

#include "cbsg.hh"
#include <omniORB4/IOP_S.h>
#include <omniORB4/IOP_C.h>
#include <omniORB4/callDescriptor.h>
#include <omniORB4/callHandle.h>
#include <omniORB4/objTracker.h>


OMNI_USING_NAMESPACE(omni)

static const char* _0RL_library_version = omniORB_4_2;



CorbaCBSG::CBSG_ptr CorbaCBSG::CBSG_Helper::_nil() {
  return ::CorbaCBSG::CBSG::_nil();
}

::CORBA::Boolean CorbaCBSG::CBSG_Helper::is_nil(::CorbaCBSG::CBSG_ptr p) {
  return ::CORBA::is_nil(p);

}

void CorbaCBSG::CBSG_Helper::release(::CorbaCBSG::CBSG_ptr p) {
  ::CORBA::release(p);
}

void CorbaCBSG::CBSG_Helper::marshalObjRef(::CorbaCBSG::CBSG_ptr obj, cdrStream& s) {
  ::CorbaCBSG::CBSG::_marshalObjRef(obj, s);
}

CorbaCBSG::CBSG_ptr CorbaCBSG::CBSG_Helper::unmarshalObjRef(cdrStream& s) {
  return ::CorbaCBSG::CBSG::_unmarshalObjRef(s);
}

void CorbaCBSG::CBSG_Helper::duplicate(::CorbaCBSG::CBSG_ptr obj) {
  if (obj && !obj->_NP_is_nil())  omni::duplicateObjRef(obj);
}

CorbaCBSG::CBSG_ptr
CorbaCBSG::CBSG::_duplicate(::CorbaCBSG::CBSG_ptr obj)
{
  if (obj && !obj->_NP_is_nil())  omni::duplicateObjRef(obj);
  return obj;
}

CorbaCBSG::CBSG_ptr
CorbaCBSG::CBSG::_narrow(::CORBA::Object_ptr obj)
{
  if (!obj || obj->_NP_is_nil() || obj->_NP_is_pseudo()) return _nil();
  _ptr_type e = (_ptr_type) obj->_PR_getobj()->_realNarrow(_PD_repoId);
  return e ? e : _nil();
}


CorbaCBSG::CBSG_ptr
CorbaCBSG::CBSG::_unchecked_narrow(::CORBA::Object_ptr obj)
{
  if (!obj || obj->_NP_is_nil() || obj->_NP_is_pseudo()) return _nil();
  _ptr_type e = (_ptr_type) obj->_PR_getobj()->_uncheckedNarrow(_PD_repoId);
  return e ? e : _nil();
}

CorbaCBSG::CBSG_ptr
CorbaCBSG::CBSG::_nil()
{
#ifdef OMNI_UNLOADABLE_STUBS
  static _objref_CBSG _the_nil_obj;
  return &_the_nil_obj;
#else
  static _objref_CBSG* _the_nil_ptr = 0;
  if (!_the_nil_ptr) {
    omni::nilRefLock().lock();
    if (!_the_nil_ptr) {
      _the_nil_ptr = new _objref_CBSG;
      registerNilCorbaObject(_the_nil_ptr);
    }
    omni::nilRefLock().unlock();
  }
  return _the_nil_ptr;
#endif
}

const char* CorbaCBSG::CBSG::_PD_repoId = "IDL:CorbaCBSG/CBSG:1.0";


CorbaCBSG::_objref_CBSG::~_objref_CBSG() {
  
}


CorbaCBSG::_objref_CBSG::_objref_CBSG(omniIOR* ior, omniIdentity* id) :
   omniObjRef(::CorbaCBSG::CBSG::_PD_repoId, ior, id, 1)
   
   
{
  _PR_setobj(this);
}

void*
CorbaCBSG::_objref_CBSG::_ptrToObjRef(const char* id)
{
  if (id == ::CorbaCBSG::CBSG::_PD_repoId)
    return (::CorbaCBSG::CBSG_ptr) this;
  
  if (id == ::CORBA::Object::_PD_repoId)
    return (::CORBA::Object_ptr) this;

  if (omni::strMatch(id, ::CorbaCBSG::CBSG::_PD_repoId))
    return (::CorbaCBSG::CBSG_ptr) this;
  
  if (omni::strMatch(id, ::CORBA::Object::_PD_repoId))
    return (::CORBA::Object_ptr) this;

  return 0;
}


//
// Code for CorbaCBSG::CBSG::createSentence

// Proxy call descriptor class. Mangled signature:
//  _cstring
class _0RL_cd_76ae10493cea66c4_00000000
  : public omniCallDescriptor
{
public:
  inline _0RL_cd_76ae10493cea66c4_00000000(LocalCallFn lcfn, const char* op_, size_t oplen, _CORBA_Boolean upcall=0)
    : omniCallDescriptor(lcfn, op_, oplen, 0, _user_exns, 0, upcall)
  {
    
  }
  
  
  void unmarshalReturnedValues(cdrStream&);
  void marshalReturnedValues(cdrStream&);
  
  
  static const char* const _user_exns[];

  ::CORBA::String_var result;
};

void _0RL_cd_76ae10493cea66c4_00000000::marshalReturnedValues(cdrStream& _n)
{
  _n.marshalString(result,0);

}

void _0RL_cd_76ae10493cea66c4_00000000::unmarshalReturnedValues(cdrStream& _n)
{
  result = _n.unmarshalString(0);

}

const char* const _0RL_cd_76ae10493cea66c4_00000000::_user_exns[] = {
  0
};

// Local call call-back function.
static void
_0RL_lcfn_76ae10493cea66c4_10000000(omniCallDescriptor* cd, omniServant* svnt)
{
  _0RL_cd_76ae10493cea66c4_00000000* tcd = (_0RL_cd_76ae10493cea66c4_00000000*)cd;
  CorbaCBSG::_impl_CBSG* impl = (CorbaCBSG::_impl_CBSG*) svnt->_ptrToInterface(CorbaCBSG::CBSG::_PD_repoId);
  tcd->result = impl->createSentence();


}

char* CorbaCBSG::_objref_CBSG::createSentence()
{
  _0RL_cd_76ae10493cea66c4_00000000 _call_desc(_0RL_lcfn_76ae10493cea66c4_10000000, "createSentence", 15);


  _invoke(_call_desc);
  return _call_desc.result._retn();


}


//
// Code for CorbaCBSG::CBSG::createWorkshop

// Local call call-back function.
static void
_0RL_lcfn_76ae10493cea66c4_20000000(omniCallDescriptor* cd, omniServant* svnt)
{
  _0RL_cd_76ae10493cea66c4_00000000* tcd = (_0RL_cd_76ae10493cea66c4_00000000*)cd;
  CorbaCBSG::_impl_CBSG* impl = (CorbaCBSG::_impl_CBSG*) svnt->_ptrToInterface(CorbaCBSG::CBSG::_PD_repoId);
  tcd->result = impl->createWorkshop();


}

char* CorbaCBSG::_objref_CBSG::createWorkshop()
{
  _0RL_cd_76ae10493cea66c4_00000000 _call_desc(_0RL_lcfn_76ae10493cea66c4_20000000, "createWorkshop", 15);


  _invoke(_call_desc);
  return _call_desc.result._retn();


}


//
// Code for CorbaCBSG::CBSG::createShortWorkshop

// Local call call-back function.
static void
_0RL_lcfn_76ae10493cea66c4_30000000(omniCallDescriptor* cd, omniServant* svnt)
{
  _0RL_cd_76ae10493cea66c4_00000000* tcd = (_0RL_cd_76ae10493cea66c4_00000000*)cd;
  CorbaCBSG::_impl_CBSG* impl = (CorbaCBSG::_impl_CBSG*) svnt->_ptrToInterface(CorbaCBSG::CBSG::_PD_repoId);
  tcd->result = impl->createShortWorkshop();


}

char* CorbaCBSG::_objref_CBSG::createShortWorkshop()
{
  _0RL_cd_76ae10493cea66c4_00000000 _call_desc(_0RL_lcfn_76ae10493cea66c4_30000000, "createShortWorkshop", 20);


  _invoke(_call_desc);
  return _call_desc.result._retn();


}


//
// Code for CorbaCBSG::CBSG::createFinancialReport

// Local call call-back function.
static void
_0RL_lcfn_76ae10493cea66c4_40000000(omniCallDescriptor* cd, omniServant* svnt)
{
  _0RL_cd_76ae10493cea66c4_00000000* tcd = (_0RL_cd_76ae10493cea66c4_00000000*)cd;
  CorbaCBSG::_impl_CBSG* impl = (CorbaCBSG::_impl_CBSG*) svnt->_ptrToInterface(CorbaCBSG::CBSG::_PD_repoId);
  tcd->result = impl->createFinancialReport();


}

char* CorbaCBSG::_objref_CBSG::createFinancialReport()
{
  _0RL_cd_76ae10493cea66c4_00000000 _call_desc(_0RL_lcfn_76ae10493cea66c4_40000000, "createFinancialReport", 22);


  _invoke(_call_desc);
  return _call_desc.result._retn();


}

CorbaCBSG::_pof_CBSG::~_pof_CBSG() {}


omniObjRef*
CorbaCBSG::_pof_CBSG::newObjRef(omniIOR* ior, omniIdentity* id)
{
  return new ::CorbaCBSG::_objref_CBSG(ior, id);
}


::CORBA::Boolean
CorbaCBSG::_pof_CBSG::is_a(const char* id) const
{
  if (omni::ptrStrMatch(id, ::CorbaCBSG::CBSG::_PD_repoId))
    return 1;
  
  return 0;
}

const CorbaCBSG::_pof_CBSG _the_pof_CorbaCBSG_mCBSG;

CorbaCBSG::_impl_CBSG::~_impl_CBSG() {}


::CORBA::Boolean
CorbaCBSG::_impl_CBSG::_dispatch(omniCallHandle& _handle)
{
  const char* op = _handle.operation_name();

  if (omni::strMatch(op, "createSentence")) {

    _0RL_cd_76ae10493cea66c4_00000000 _call_desc(_0RL_lcfn_76ae10493cea66c4_10000000, "createSentence", 15, 1);
    
    _handle.upcall(this,_call_desc);
    return 1;
  }

  if (omni::strMatch(op, "createWorkshop")) {

    _0RL_cd_76ae10493cea66c4_00000000 _call_desc(_0RL_lcfn_76ae10493cea66c4_20000000, "createWorkshop", 15, 1);
    
    _handle.upcall(this,_call_desc);
    return 1;
  }

  if (omni::strMatch(op, "createShortWorkshop")) {

    _0RL_cd_76ae10493cea66c4_00000000 _call_desc(_0RL_lcfn_76ae10493cea66c4_30000000, "createShortWorkshop", 20, 1);
    
    _handle.upcall(this,_call_desc);
    return 1;
  }

  if (omni::strMatch(op, "createFinancialReport")) {

    _0RL_cd_76ae10493cea66c4_00000000 _call_desc(_0RL_lcfn_76ae10493cea66c4_40000000, "createFinancialReport", 22, 1);
    
    _handle.upcall(this,_call_desc);
    return 1;
  }


  return 0;
}

void*
CorbaCBSG::_impl_CBSG::_ptrToInterface(const char* id)
{
  if (id == ::CorbaCBSG::CBSG::_PD_repoId)
    return (::CorbaCBSG::_impl_CBSG*) this;
  
  if (id == ::CORBA::Object::_PD_repoId)
    return (void*) 1;

  if (omni::strMatch(id, ::CorbaCBSG::CBSG::_PD_repoId))
    return (::CorbaCBSG::_impl_CBSG*) this;
  
  if (omni::strMatch(id, ::CORBA::Object::_PD_repoId))
    return (void*) 1;
  return 0;
}

const char*
CorbaCBSG::_impl_CBSG::_mostDerivedRepoId()
{
  return ::CorbaCBSG::CBSG::_PD_repoId;
}

POA_CorbaCBSG::CBSG::~CBSG() {}

