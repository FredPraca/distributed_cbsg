# Distributed CBSG

This repository contains the code used to introduce CORBA with Ada at the FOSDEM'19 in Brussels.

## Goal

The goal of this presentation is to show how to transform an application or library into a distributed application that can be run across different machines on a network.
For this presentation, the chosen application is the [Corporate BullShit Generator](http://cbsg.sf.net/) aka _CBSG_.![QR Code](http://pasta.phyrama.com:8083/qr_cbsg.png)

This application exists in two forms :
* Desktop Application
* CGI for the Web (the page you will land in with the link above)

This application provides a CORBA server in Ada exposing the CBSG, an Ada client and a C++ client.

## How to compile

This paragraph describes what is needed to compile and how to compile under a Linux system. It has been tested with Ubuntu.

### Requirements

First of all, you will need obviously an Ada compiler. At the moment, it has only been tested with Adacore compilers that you can download [here](https://www.adacore.com/download). Moreover, the compilation requires *gprbuild* which is part of Adacore toolsuite.

Then you will need PolyORB, you will find it just [there](https://github.com/AdaCore/PolyORB) on GitHub.

If you want to build the C++ client, you will need OmniORB4.

And finally, you will need the source code of the [Corporate Bullshit Generator](https://sourceforge.net/projects/cbsg/files/latest/download).

### Compilation

#### PolyORB compilation

As this is not fully explained in the PolyORB INSTALL file from the project, here is what you will have to do in order to make this project work.

To compile PolyORB, type:
```bash
fred@Tatooine:~/Dev/Ada/PolyORB$ support/reconfig
[snip]
fred@Tatooine:~/Dev/Ada/PolyORB$ ./configure \
  --prefix=/opt/gnat/ --with-proto-perso="giop" \
  --with-appli-perso="corba" \
  --with-corba-services="naming event ir notification time"
  --with-gprbuild=gprbuild
[snip]
fred@Tatooine:~/Dev/Ada/PolyORB$ make && make install
```

This will install the PolyORB libraries and utilities inside the `/opt/gnat` directory. In order to use PolyORB utilities, you should consider adding `/opt/gnat/bin` to your *PATH*.

#### This project

Now that we have PolyORB installed, let's compile our project.
Two possibilities:
* build everything
* build each part independently

To build everything at once, just use the aggregate GPRBuild project at the root.
First, tell GPRBuild where it will find the CBSG sources
```bash
export ADA_PROJECT_PATH=/tmp/cbsg-src/
```
Then build
```bash
fred@Tatooine:~/Dev/Ada/distributed$ gprbuild
```
That's all.

The following parts describe how to build each component.

##### Ada part

* Add the path of the *CBSG* GPRBuild project file to the GPRBuild projects path
```bash
export ADA_PROJECT_PATH=/tmp/cbsg-src/
```
* Then go to the Ada server directory and build
```bash
fred@Tatooine:~/Dev/Ada/distributed$ cd Ada/server/
fred@Tatooine:~/Dev/Ada/distributed/Ada/server$ gprbuild
```
* Then go to the Ada client directory and build it
```bash
fred@Tatooine:~/Dev/Ada/distributed$ cd Ada/client/
fred@Tatooine:~/Dev/Ada/distributed/Ada/client$ gprbuild
```

The server and client are now ready !

##### C++ part

Optionally, you can build the C++ client to demonstrate the interoperability between languages.
The building process is quite easy as it is handled by GPRBuild.

```bash
fred@Tatooine:~/Dev/Ada/distributed$ cd C++
fred@Tatooine:~/Dev/Ada/distributed/C++$ gprbuild
```

The C++ client should be ready in the *bin* directory

## Run it !

By default, your server will run using the first available address. Usually it will be *localhost*.

### Locally

First of all, launch a CORBA name server. In our case, this might be the one of PolyORB or the one provided by OmniORB4.

Start the one from PolyORB:
```bash
fred@tatooine:~$ po_cos_naming
POLYORB_CORBA_NAME_SERVICE=IOR:010000002b00000049444c3a6f6d672e6f72672f436f734e616d696e672f4e616d696e67436f6e746578744578743a312e300000020000000000000068000000010102000a0000003132372e302e312e3100cd84270000004e616d65536572766963652f3030303030303032346646303030303030303038303030303030300001000000010000001c0000000100000001000100000000000001010002000000010101000201010003004f5044000000010100000a0000003132372e302e312e31008aa8270000004e616d65536572766963652f3030303030303032346646303030303030303038303030303030300000000000
POLYORB_CORBA_NAME_SERVICE=corbaloc:iiop:1.2@127.0.1.1:33997/NameService/000000024fF0000000080000000
```
Our CORBA name server is ready for object registration.

In your server directory, just run the server:
```bash
fred@Tatooine:~/Dev/Ada/distributed/Ada/server$ bin/server -ORBInitRef NameService=corbaloc:iiop:1.2@127.0.1.1:46867/NameService/000000024fF0000000080000000
'IOR:010000001700000049444c3a436f726261434253472f434253473a312e30000002000000000000005c000000010102000a0000003132372e302e312e3100f1b61b0000002f30303030303030313154363638356331353530303030303637650001000000010000001c0000000100000001000100000000000001010002000000010101000201010003004f5038000000010100000a0000003132372e302e312e31009bd51b0000002f30303030303030313154363638356331353530303030303637650000000000'

'corbaloc:iiop:1.2@127.0.1.1:46833//000000011T6685c1550000067e'
Generator rebound
```

This shows that your server is running and the distributed object (servant in CORBA terminology) is listening on *127.0.0.1*. It's also registered to the Name service.
The *ORBInitRef* command line parameter is a standard one (see [Ciaran McHale page](http://www.ciaranmchale.com/corba-explained-simply/the-corbaloc-and-corbaname-urls.html#toc66) for more information).

This is enough to perform some tests with the client using the name service.

To launch the Ada client, we use the same syntax to provide the path to the name service:
```bash
fred@Tatooine:~/Dev/Ada/distributed/Ada/client$ bin/client -ORBInitRef NameService=corbaloc:iiop:1.2@127.0.1.1:46867/NameService/000000024fF0000000080000000
The generator said : It's not about connectivity. It's about our decision-to-execution cycle.
```

To launch the C++ client, we use exactly the same syntax as with Ada:
```bash
fred@Tatooine:~/Dev/Ada/distributed/C++/client$ bin/client bin/client -ORBInitRef NameService=corbaloc:iiop:1.2@127.0.1.1:46867/NameService/000000024fF0000000080000000
The generator said : A multi-source, solution-oriented and well-scoped operating model carefully promotes the Executive Chief of Business Operations.
```

### Really distributed

To definitly distribute our object, we need to tell which interface we are listening to.
As the name service is a CORBA server providing a NameService servant, we start it by providing the listening address.
```bash
fred@tatooine:~$ POLYORB_IIOP_POLYORB_PROTOCOLS_IIOP_DEFAULT_ADDR=192.168.122.1 po_cos_naming
POLYORB_CORBA_NAME_SERVICE=IOR:010000002b00000049444c3a6f6d672e6f72672f436f734e616d696e672f4e616d696e67436f6e746578744578743a312e30000002000000000000006c000000010102000e0000003139322e3136382e3132322e3100a58d270000004e616d65536572766963652f3030303030303032346646303030303030303038303030303030300001000000010000001c0000000100000001000100000000000001010002000000010101000201010003004f5044000000010100000a0000003132372e302e312e31005d82270000004e616d65536572766963652f3030303030303032346646303030303030303038303030303030300000000000
POLYORB_CORBA_NAME_SERVICE=corbaloc:iiop:1.2@192.168.122.1:36261/NameService/000000024fF0000000080000000
```
 Our name server is now listening on a specific address.
 Please note that this command line is for PolyORB name service and might be different for other name servers as OmniORB4 one.
 
 Then we launch our CBSG server:
```bash
fred@Tatooine:~/Dev/Ada/distributed/Ada/server$ POLYORB_IIOP_POLYORB_PROTOCOLS_IIOP_DEFAULT_ADDR=192.168.122.1 bin/server -ORBInitRef NameService=corbaloc:iiop:1.2@192.168.122.1:36261/NameService/000000024fF0000000080000000
'IOR:010000001700000049444c3a436f726261434253472f434253473a312e30000002000000000000005c000000010102000a0000003132372e302e312e310019991b0000002f30303030303030313154643466653134383630303030303731320001000000010000001c0000000100000001000100000000000001010002000000010101000201010003004f5038000000010100000a0000003132372e302e312e310058b01b0000002f30303030303030313154643466653134383630303030303731320000000000'

'corbaloc:iiop:1.2@127.0.1.1:39193//000000011Td4fe148600000712'
Generator rebound
```

Now, you are able to call the server with the client as before from a remote computer, as long as the port, here 39193, is open.

We just have to launch with the path to the name server
```bash
fred@Tatooine:~/Dev/Ada/distributed/Ada/client$ bin/client  -ORBInitRef NameService=corbaloc:iiop:1.2@192.168.122.1:36261/NameService/000000024fF0000000080000000
The generator said : Machine intelligence, policy and sign-off inspire the game changers.
```

The same for C++
```bash
fred@Tatooine:~/Dev/Ada/distributed/C++$ bin/client -ORBInitRef NameService=corbaloc:iiop:1.2@192.168.122.1:36261/NameService/000000024fF0000000080000000
The generator said : Sizeable productivity improvement standardize a transitional market.
```
