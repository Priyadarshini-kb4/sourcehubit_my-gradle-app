# Use an official OpenJDK runtime as a parent image
FROM eclipse-temurin:17-jdk-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy Gradle wrapper and project files
COPY gradlew .
COPY gradle/ gradle/
COPY build.gradle settings.gradle ./
COPY app/ app/

# Make Gradle wrapper executable
RUN chmod +x gradlew

# Build the project inside Docker
RUN ./gradlew build --no-daemon

# Set the default command to run your app
CMD ["java", "-jar", "build/libs/my-gradle-app-1.0-SNAPSHOT.jar"]

