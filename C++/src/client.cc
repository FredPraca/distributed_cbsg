#include <cbsg.hh>
#ifdef HAVE_STD 
#include <iostream> 
#include <fstream> 
using namespace std; 
#else 
#include <iostream.h>
#endif 
 
////////////////////////////////////////////////////////////////////// 
int main(int argc, char** argv) 
{ 
  try 
    { 
      //Initialisation de l'ORB
      CORBA::ORB_var orb = CORBA::ORB_init(argc, argv); 
      if( argc != 2 ) 
	{ 
	  cerr << "usage: client <object reference>" << endl; 
	  return 1; 
	} 
 
      // We create a CORBA object from the provided string
      CORBA::Object_var obj = orb->string_to_object(argv[1]); 
 
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
