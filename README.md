# My Gradle Java App with CI/CD Pipeline

## Project Overview
This project demonstrates a Java application built using Gradle, containerized with Docker, and integrated with GitHub Actions for a CI/CD pipeline.

Key features:
- Java app built with Gradle
- Dockerfile to containerize the app
- GitHub Actions workflow for automated build and CI/CD

---

## Project Structure
my-gradle-app/
├─ app/ # Java source code
├─ build.gradle # Gradle build configuration
├─ settings.gradle
├─ Dockerfile # Docker container setup
└─ .github/workflows/ # GitHub Actions CI/CD workflow



---

## How to Build and Run

### Run locally with Gradle:
```bash
cd my-gradle-app
./gradlew build
java -jar build/libs/my-gradle-app-1.0-SNAPSHOT.jar


Run with Docker:
docker build -t my-gradle-app:latest .
docker run --rm my-gradle-app:latest

CI/CD Pipeline
GitHub Actions automatically builds the project on each push to main.
Docker image can be built and pushed to Docker Hub.
Workflow file: .github/workflows/ci-cd-pipeline.yml

Conclusion
This project showcases a complete CI/CD pipeline for a Java app using Gradle and Docker, demonstrating real-world DevOps practices.

