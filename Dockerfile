# Use an base image with tomcat and JDK 21
FROM tomcat:10.1.26-jdk21

LABEL authors="rhymebulbul"

#ENTRYPOINT ["top", "-b"]
# Set working directory inside the container
WORKDIR /app

# Copy the Maven wrapper and pom.xml file to the container
COPY mvnw .
#COPY mvnw.cmd .
COPY pom.xml .

# Copy the entire project and build it
COPY src ./src
RUN ./mvnw clean package

# Expose Tomcat port
EXPOSE 8080

# Define environment variables
ENV JAVA_OPTS="-Xmx512m"

# Start Tomcat
CMD ["java", "-jar", "target/your-war-file-name.war"]
