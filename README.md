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

This paragraph describes what is needed to compile and how to compile.

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

In your server directory, just run the server:
```bash
fred@Tatooine:~/Dev/Ada/distributed/Ada/server$ bin/server
'IOR:010000001700000049444c3a436f726261434253472f434253473a312e30000002000000000000005c000000010102000a0000003132372e302e312e3100038b1b0000002f30303030303030313154653262343635303831353761633334330001000000010000001c0000000100000001000100000000000001010002000000010101000201010003004f5038000000010100000a0000003132372e302e312e310025891b0000002f30303030303030313154653262343635303831353761633334330000000000'

'corbaloc:iiop:1.2@127.0.1.1:35587//000000011Te2b46508157ac343'
```

This shows that your server is running and the distributed object (servant in CORBA terminology) is listening on *127.0.0.1*.
This is enough to perform some tests with the client.

To launch the Ada client:
```bash
fred@Tatooine:~/Dev/Ada/distributed/Ada/client$ bin/client corbaloc:iiop:1.2@127.0.1.1:35587//000000011Te2b46508157ac343
The generator said : Implication and value cross-pollinate our robust efficiency gain.
```

To launch the C++ client:
```bash
fred@Tatooine:~/Dev/Ada/distributed/Ada/client$ bin/client corbaloc:iiop:1.2@127.0.1.1:35587//000000011Te2b46508157ac343
The generator said : The collaborative strategic thinking turbocharges a business model.
```

### Really distributed

To definitly distribute our object, we need to tell which interface we are listening to:
```bash
fred@Tatooine:~/Dev/Ada/distributed/Ada/server$ POLYORB_IIOP_POLYORB_PROTOCOLS_IIOP_DEFAULT_ADDR=192.168.122.1 bin/server
'IOR:010000001700000049444c3a436f726261434253472f434253473a312e300000020000000000000060000000010102000e0000003139322e3136382e3132322e31004f8a1b0000002f30303030303030313154633839393431623831353761633466650001000000010000001c0000000100000001000100000000000001010002000000010101000201010003004f5038000000010100000a0000003132372e302e312e3100b7991b0000002f30303030303030313154633839393431623831353761633466650000000000'

'corbaloc:iiop:1.2@192.168.122.1:35407//000000011Tc89941b8157ac4fe'
```

Now, you are able to call the server with the client as before from a remote computer, as long as the port, here 35407, is open.

Once again, we just have to use the *corbaloc* string to call the server as it contains both the address and port plus the object id.
```bash
fred@Tatooine:~/Dev/Ada/distributed/Ada/client$ bin/client corbaloc:iiop:1.2@192.168.122.1:35407//000000011Tc89941b8157ac4fe
The generator said : Efficiency-enabling agilities 24/7 accelerate our visionary brand pyramids up-front, while the project manager makes things happen from within the data.
```

The same for C++
```bash
fred@Tatooine:~/Dev/Ada/distributed/C++$ bin/client corbaloc:iiop:1.2@192.168.122.1:35407//000000011Tc89941b8157ac4fe
The generator said : Efficiency-enabling agilities 24/7 accelerate our visionary brand pyramids up-front, while the project manager makes things happen from within the data.
```
