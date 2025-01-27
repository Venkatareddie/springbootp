# Step 1: Use a base image for Java
FROM openjdk:11-jdk-slim

# Step 2: Set the working directory in the container
WORKDIR /app

# Step 3: Copy the application's JAR file into the container
COPY target/simple_app-docker-0.0.1-SNAPSHOT.jar app.jar

# Step 4: Expose the port your application listens on
EXPOSE 8080

# Step 5: Command to run the JAR file
CMD ["java", "-jar", "app.jar"]
