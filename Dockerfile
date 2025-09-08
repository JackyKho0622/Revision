FROM openjdk:8-jre-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the compiled Java application JAR file into the container
COPY build/libs/my-application-1.0.jar /app/my-application-1.0.jar

# java -jar to run the application
ENTRYPOINT ["java", "-jar", "my-application-1.0.jar"]