Business requirement
--------------------
Implement web-application for uploading multiple files. After uploading files on server-side, web-service client should be called for storing files in pre-defined folder in file system.

Specification
-------------
- files should not be bigger than e.g. 1MB (there's also validation using JavaScript on the client-side, which might not be supported in all browsers - but there's also server-side validation after file is uploaded)
- system should be smart NOT to overwrite already existing files with the same name
- in such case, files should be organized in sub-folders structure
- web application should follow style / formatting from http://www.briefbutler.at

Technical requirements
----------------------
- Application needs to run on Tomcat (no other strict requirement requested, therefore following frameworks were used):
- web-service implemented using Apache CXF
- as a web-framework Struts was used
- for service layer and web-service consumer Spring was used
- Maven is used for dependencies management and build

Implementation Notes
--------------------
Project implemented in a following way:
- server web module - basically dummy application used for providing / deploying web-service endpoint
- client application - implemented using Struts, contains web-service client code, and Spring consumer's service (as well as junit and integration tests)
- shared WS API (hpc-ws-api) - meant to be used also for providing model classes for displaying a tree after files upload (unfortunatelly this part is not completed - although not explicitly requested)

Notes
----------------
- in Maven POM.xmls it is already setup generating .war files for client / server application
- I had to wire-up jetty server with Maven plugins in order to run integration tests during Maven build (will provide starting of server application, for running tests in client)
- following properties should be setup in order to be able to start application - in root pom.xml (hpc-upload-files):
- **web.service.default.port** - by default set to *8082* (needs to be not used port in order to run server / client)
- **default.upload.path** - by default set to */home/nikola/Desktop/hpc* (needs to be a valid path in file system, otherwise upload of files will not be possible - system performs validation)
- building as well running tests is possible from command line using Maven (mvn clean install)
- after running client application (e.g. http://localhost:8082/client/), you should be forwarded to the default page -> please follow link "**Goto file upload**" for going to "**upload**" page

Additional Notes
----------------
- implementation done on Ubuntu 15.4, using IntelliJ, Java 8, Tomcat 8, Maven 3
- the project should be able to be build from command line using Maven and/or from IDE
