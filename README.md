Business requirement
--------------------
Implement web-application for uploading multiple files. After uploading files on server-side, web-service client should be called for storing files in pre-defined folder in file system.

Specification
-------------
- files should not be bigger that e.g. 1MB
- system should be smart NOT to overwrite already existing files with the same name
- storing files with the same name should be organized in sub-folders structure
- web application should follow style / formatting from http://www.briefbutler.at

Technical requirements
----------------------
- Application needs to run in Tomcat (no other strict requirement, therefore following frameworks were used):
- web-service implementd using Apache CXF
- as a web-framework Struts was used
- for service layer and web-service consumer Spring was used
- Maven is used for dependency management and build

Implementation Notes
--------------------
Project implemented in a following way:
- server web module - basically dummy application used for providing / deploying web-service endpoint
- client application - implemented using Struts, contains web-service client code, and Spring consumer's service (as well as junit and integration tests)
- shared WS API (hpc-ws-api)

Notes
----------------
- in Maven POM.xmls it is already setup generating .war files for client / server application
- I had to wire-up jetty server with Maven plugins in order to run integration test during Maven build (will provide starting of server application, for running test in client)
- following properties should be setup in order to be able to start application - in root pom.xml (hpv-upload-files):
- web.service.default.port - by default set to 8082 (needs to be not used port in order to run server / client)
- default.upload.path - by default set to /home/nikola/Desktop/hpc (needs to valid path in file system, otherwise upload of files will not be possible - system performs validation)
- building as well running test is possible from command line using Maven (mvn clean install)

Additional Notes
----------------
- implementation done on Ubuntu 15.4, using IntelliJ, Java 8, Tomcat 8, Maven 3
- the project should be able to be build from command line using Maven and/or from IDE
