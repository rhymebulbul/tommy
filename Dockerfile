# Use an base image with tomcat and JDK 21
FROM tomcat:10.1.26-jdk21 AS tommy

LABEL authors="rhyme"

# Define Args
#ARG USER

# Define environment variables
ENV JAVA_OPTS="-Xmx512m"

# Set working directory inside the container
#WORKDIR /app

# Copy WAR file to tomcat directory
COPY target/tommy-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/
# /Users/${USER}/tomcat/webapps/

# Expose Tomcat port
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
