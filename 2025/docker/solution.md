# Week 5: Docker Basics & Advanced Challenge

# Task 1: Introduction and Conceptual Understanding

- In your `solution.md`, provide a brief explanation of Docker’s purpose in modern DevOps.

---

## 1. Purpose of Docker in Modern DevOps 🐳

Docker helps applications run consistently on different computers and servers.

Imagine you develop an application on your laptop. It works perfectly, but when you run it on another computer or server, it fails because some software or dependencies are missing.

Docker solves this problem by packaging the application and everything it needs into a container.

### Why Do We Use Docker?

- **Same Environment:** The application can run consistently on your laptop, testing server, and production server.
- **Easy Deployment:** You can move and run your application on another server more easily.
- **Saves Time:** You don't need to install and configure all the application dependencies manually on every server.
- **Faster Delivery:** Docker helps DevOps teams automate application building, testing, and deployment.
- **Less Resource Usage:** Containers generally use fewer resources than virtual machines.

### Simple Real-Life Example

Imagine you pack your clothes, shoes, and other necessary items into a suitcase before travelling.

Wherever you go, you have everything you need in one place.

Docker works similarly:

- **Application:** Your clothes.
- **Dependencies:** Your shoes and other necessary items.
- **Docker Container:** Your suitcase.
- **Different Servers:** Different destinations.

You can take your suitcase to different places without collecting all your belongings again.

Similarly, Docker packages an application and its dependencies so it can run in different supported environments.

---

- Compare **Virtualization vs. Containerization** and explain why containerization is the preferred approach for microservices and CI/CD pipelines.

---

## 2. Virtualization vs. Containerization

### 2.1 What Is Virtualization?

Virtualization means creating multiple virtual computers on one physical computer.

Each virtual computer, called a **Virtual Machine (VM)**, typically has its own operating system.

**Example:**

Imagine one physical computer running three virtual machines:

- VM 1 runs Linux.
- VM 2 runs Windows.
- VM 3 runs Linux.

Each VM has its own operating system, which requires additional resources.

Think of virtualization as three separate houses, each with its own facilities.

### 2.2 What Is Containerization?

Containerization means packaging an application and everything it needs to run into a container.

Containers share the host operating system's kernel, so they generally use fewer resources than virtual machines.

**Example:**

Imagine a computer running three containers:

- Container 1 runs a Python application.
- Container 2 runs a Java application.
- Container 3 runs a Node.js application.

Each container has its own application environment, but they share the host kernel.

Think of containerization as three apartments in one building. Each apartment has its own living space, but they share the building's infrastructure.

### 2.3 Comparison: Virtualization vs. Containerization

| Virtualization | Containerization |
|---|---|
| Creates virtual computers. | Packages applications into containers. |
| Each VM typically has its own operating system. | Containers share the host OS kernel. |
| Uses more resources in many typical setups. | Generally uses fewer resources. |
| Usually takes longer to start. | Usually starts faster. |
| Useful for running different operating systems. | Useful for deploying applications quickly. |

**Conclusion:** Virtualization is useful for creating separate virtual computers, while containerization is useful for packaging and deploying applications efficiently.

---

## 3. Why Is Containerization Preferred for Microservices?

Microservices architecture means dividing a large application into smaller, independent services.

For example, an online shopping application might have:

- User Service
- Payment Service
- Product Service
- Order Service

Using containers, we can package each service separately.

### Why Is This Useful?

- **Independent Deployment:** We can update the payment service without redeploying the entire application.
- **Easy Scaling:** If the payment service receives more traffic, we can run additional instances of that service.
- **Less Resource Usage:** Containers generally require fewer resources than running a separate VM for every service.
- **Flexibility:** Different services can use different programming languages and dependencies.

### Example: Microservices Architecture

```text
          E-Commerce Application
                    |
        +-----------+-----------+
        |           |           |
        v           v           v
   User Service  Product     Payment
   Container     Container   Container
        |           |           |
        +-----------+-----------+
                    |
               Order Service
                 Container
```

**Conclusion:** Containerization is well suited to microservices because it makes individual services easier to package, deploy, and scale independently.

---

## 4. Why Is Containerization Preferred for CI/CD?

CI/CD automates the process of building, testing, and deploying applications.

Suppose a developer writes new code. A typical workflow looks like this:

### CI/CD Workflow

```text
Developer Writes Code
         |
         v
Code Is Pushed to Git
         |
         v
CI/CD Pipeline Starts
         |
         v
Docker Builds an Image
         |
         v
Application Is Tested
         |
         v
Image Is Pushed to a Registry
         |
         v
Image Is Deployed to a Server
         |
         v
Application Runs in a Container
```

### Benefits of Docker in CI/CD

- **Consistency:** The application can run consistently in testing and production.
- **Faster Deployment:** The prepared image can be deployed without reinstalling all application dependencies.
- **Easy Rollback:** If a new version fails, the team can redeploy a previous image.
- **Automation:** Tools such as Jenkins and GitHub Actions can automate building, testing, and deploying applications.
- **Portability:** The same image can be deployed across compatible environments.

### Example of Docker in CI/CD

Imagine a developer updates an application and pushes the code to GitHub.

1. GitHub Actions or Jenkins detects the code change.
2. The CI/CD pipeline builds a Docker image.
3. Automated tests check whether the application works correctly.
4. The image is pushed to a container registry.
5. The deployment process pulls the image and runs it on the target server.

This process reduces manual work and makes application delivery more consistent.

**Conclusion:** Containerization is preferred for CI/CD because it provides a consistent, portable application package that can be built, tested, and deployed through automation.

---

## 5. Final Summary

| Concept | Purpose |
|---|---|
| Docker | Packages applications and their dependencies into containers. |
| Virtualization | Creates virtual computers that typically run separate operating systems. |
| Containerization | Runs isolated applications while sharing the host OS kernel. |
| Microservices | Allows applications to be divided into smaller, independent services. |
| CI/CD | Automates application building, testing, and deployment. |

### Key Takeaway

Docker plays an important role in modern DevOps by making applications easier to package, test, deploy, and run consistently across different environments.

Containerization is particularly useful for microservices and CI/CD pipelines because it supports independent deployment, efficient resource usage, portability, and automation.

---

# Task 2: Create a Dockerfile for a Sample Java Project

This project demonstrates how to containerize a simple Java application using Docker. The application prints random quotes to the terminal and can be extended to handle web requests.

## 1. Project Overview

The goal of this project is to:

- Create a simple Java application.
- Write a Dockerfile to containerize the application.
- Build a Docker image.
- Run the application inside a Docker container.
- Verify the container status and application logs.

## 2. Project Structure

Organize your project files as follows:

```text
java-app/
├── src/
│   └── Main.java
├── Dockerfile
└── README.md
```

## 3. Create the Dockerfile

Create a file named `Dockerfile` in the root directory of your project.

```dockerfile
# Use the official Eclipse Temurin Java 21 JDK image
FROM eclipse-temurin:21-jdk

# Set the working directory
WORKDIR /app

# Copy the Java source file into the container
COPY src/Main.java .

# Compile the Java application
RUN javac Main.java

# Start the Java application
CMD ["java", "Main"]
```

### Explanation

- `FROM eclipse-temurin:21-jdk`: Uses Java 21 as the base image.
- `WORKDIR /app`: Sets `/app` as the working directory inside the container.
- `COPY src/Main.java .`: Copies the Java source file into the container.
- `RUN javac Main.java`: Compiles the Java application.
- `CMD ["java", "Main"]`: Executes the compiled Java application when the container starts.

**Note:** The Dockerfile above is suitable for a terminal-based application that prints quotes. If your application runs a web server, you must configure the application to listen on a port and expose that port as needed.

## 4. Build the Docker Image

Open a terminal in the root directory of your project and execute:

```bash
docker build -t rachitthakur/java-app:latest .
```

- `docker build`: Builds a Docker image.
- `-t rachitthakur/java-app:latest`: Assigns a name and tag to the image.
- `.`: Specifies the current directory as the build context.

### Docker Build Screenshot

![Docker Build Process](images/Screenshot29.png)

## 5. Run the Docker Container

Run the application in detached mode using the following command:

```bash
docker run -d rachitthakur/java-app:latest
```

**Note:** Since this sample application prints quotes to the terminal, you do not need to map any ports. Port mapping is required only if the application runs a network service, such as a web server.

### Running Container Screenshot

![Running Docker Container](images/Screenshot30.png)

The app is also running on the localhost.

![Localhost Verification](images/Screenshot31.png)
## 6. Verify the Application

### Check Container Status

Execute the following command to list running containers:

```bash
docker ps
```

To view all containers, including stopped ones, use:

```bash
docker ps -a
```

### Container Status Screenshot

![Docker PS Output](images/Screenshot32.png)

### Check Application Logs

View the application's output using:

```bash
docker logs <container_id>
```

The logs should display the quotes printed by the Java application.

### Docker Logs Screenshot

![Docker Logs Output](images/Screenshot33.png)


## 7. Stop and Remove the Container

To stop the running container:

```bash
docker stop java-app
```

To remove the container:

```bash
docker rm java-app
```

To remove the Docker image, run:

```bash
docker rmi rachitthakur/java-app:latest
```

---



