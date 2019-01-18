#include <cbsg.hh>
#ifdef HAVE_STD 
#include <iostream> 
#include <fstream> 
using namespace std; 
#else 
#include <iostream.h>
#endif 

static CORBA::Object_ptr
getObjectReference(CORBA::ORB_ptr orb)
{
  CosNaming::NamingContext_var rootContext;
  
  try {
    // Obtain a reference to the root context of the Name service:
    CORBA::Object_var obj;
    obj = orb->resolve_initial_references("NameService");

    // Narrow the reference returned.
    rootContext = CosNaming::NamingContext::_narrow(obj);

    if (CORBA::is_nil(rootContext)) {
      cerr << "Failed to narrow the root naming context." << endl;
      return CORBA::Object::_nil();
    }
  }
  catch (CORBA::NO_RESOURCES&) {
    cerr << "Caught NO_RESOURCES exception. You must configure omniORB "
	 << "with the location" << endl
	 << "of the naming service." << endl;
    return CORBA::Object::_nil();
  }
  catch (CORBA::ORB::InvalidName& ex) {
    // This should not happen!
    cerr << "Service required is invalid [does not exist]." << endl;
    return CORBA::Object::_nil();
  }

  // Create a name object, containing the name test/context:
  CosNaming::Name name;
  name.length(2);

  name[0].id   = (const char*) "cbsg";       // string copied
  name[1].id   = (const char*) "generator";

  try {
    // Resolve the name to an object reference.
    return rootContext->resolve(name);
  }
  catch (CosNaming::NamingContext::NotFound& ex) {
    // This exception is thrown if any of the components of the
    // path [contexts or the object] aren't found:
    cerr << "Context not found." << endl;
  }
  catch (CORBA::TRANSIENT& ex) {
    cerr << "Caught system exception TRANSIENT -- unable to contact the "
         << "naming service." << endl
	 << "Make sure the naming server is running and that omniORB is "
	 << "configured correctly." << endl;
  }
  catch (CORBA::SystemException& ex) {
    cerr << "Caught a CORBA::" << ex._name()
	 << " while using the naming service." << endl;
  }
  return CORBA::Object::_nil();
}

////////////////////////////////////////////////////////////////////// 
int main(int argc, char** argv) 
{ 
  try 
    { 
      //Initialisation de l'ORB
      CORBA::ORB_var orb = CORBA::ORB_init(argc, argv);

      // We create a CORBA object from the name service
      CORBA::Object_var obj = getObjectReference(orb);
      
      //Then cast it to CBSG reference
      CorbaCBSG::CBSG_var cbsgRef = CorbaCBSG::CBSG::_narrow(obj);
      
      // We then check the object is correct
      if( CORBA::is_nil(cbsgRef) ) 
	{ 
	  cerr << "Can't narrow reference to type CBSG (or it was nil)." << endl; 
	  return 1; 
	} 
      
      // And go, call the method
      cout << "The generator said : " << cbsgRef->createSentence() << endl;
      
      // Then we stop the ORB
      orb->destroy(); 
    }
  // But we also catch everything that might happen
  catch(CORBA::TRANSIENT&) 
    {
      cerr << "Caught system exception TRANSIENT -- unable to contact the " << "server." << endl; 
    } 
  catch(CORBA::SystemException& ex) 
    { 
      cerr << "Caught a CORBA::" << ex._name() << endl;
    }
  catch(CORBA::Exception& ex) 
    { 
      cerr << "Caught CORBA::Exception: " << ex._name() << endl;
    } 
  catch(omniORB::fatalException& fe) 
    {
      cerr << "Caught omniORB::fatalException:" << endl; 
      cerr << " file: " << fe.file() << endl; 
      cerr << " line: " << fe.line() << endl; 
      cerr << " mesg: " << fe.errmsg() << endl; 
    } 
  return 0; 
}
