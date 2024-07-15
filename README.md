# Tommy
Meet Tommy, the Apache Tomcat application 
that implements a hello world GET Request, 
as well as a POST Request welcoming you

# Requirements
Java 21
Apache Tomcat 10
Maven 3.9

# How to build
Build using `./mvnw clean package`

# How to run locally

Copy war file `cp target/tommy-1.0-SNAPSHOT.war /Users/username/apache-tomcat-10.1.26/webapps/`

Start Tomcat `bash /Users/username/apache-tomcat-10.1.26/bin/startup.sh`

# How to containerise
Build using `docker build -t tommy .` tag the docker image as "tommy"
Verify the image is available locally by running `docker images`
Run `docker run -p 8080:8080 tommy`

[//]: # ( Build using `docker build --build-arg USER=rhyme -t tommy .` tag the docker image as "tommy")


# How to use
Now navigate to http://localhost:8080/tommy-1.0-SNAPSHOT/api/hello-world via the web browser

Or run Curl in the terminal `curl -X POST http://localhost:8080/tommy-1.0-SNAPSHOT/api/hello-world/John`

