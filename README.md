🎓 EduVibe Backend (Microservices Platform)

EduVibe Backend is a scalable, microservices-based backend system built with NestJS, designed to power an e-learning platform that provides secure authentication and controlled access to course recordings.

The system follows modern DevOps practices, including containerization, automated CI/CD pipelines, and infrastructure as code, with a clear path from local development to cloud production deployment.

📌 Project Overview

EduVibe Backend enables:

User registration and authentication

Secure access to course recordings

Video streaming and downloads

Administrative upload and management of course content

The backend is API-driven and can be consumed by a frontend application or tested directly using Postman or cURL.

🏗️ System Architecture

EduVibe Backend is implemented using a NestJS microservices architecture.

Client (Web / Mobile / Postman)
        ↓
API Gateway (NestJS)
        ↓
-----------------------------------------
| Auth Service | User Service            |
| Recording Service | Media Management   |
-----------------------------------------
        ↓
Database (PostgreSQL / MySQL) & Storage


Each microservice is independently deployable and scalable.

✨ Core Features
👤 User Authentication

User registration with:

Username

Email

Password

Gender

Secure login using email and password

JWT-based authentication and authorization

📚 Course Recordings

Authenticated users can:

View available course recordings

Stream recorded lectures

Download recordings for offline use

🛠️ Admin Capabilities

Admin users can:

Upload course videos

Organize recordings by course

Control content availability

🛠️ Technology Stack
Backend

Framework: NestJS

Language: TypeScript

Architecture: Microservices

Authentication: JWT

ORM: TypeORM

DevOps & Infrastructure

Containerization: Docker

Local Orchestration: Docker Compose (development)

CI/CD: Jenkins (Automated pipeline via Jenkinsfile)

Cloud Provider: AWS (planned)

Container Orchestration: Kubernetes (production)

Infrastructure as Code: Terraform

Tooling

API Testing: Postman, cURL

Version Control: Git & GitHub

🔄 CI/CD Pipeline (Jenkins)

A Jenkinsfile is included in the repository to automate the CI/CD process.

Pipeline Responsibilities

Pull source code from GitHub

Install dependencies

Run automated tests

Build Docker images

Prepare artifacts for deployment

This ensures code quality, consistency, and repeatable builds across environments.

🐳 Development Environment (Docker Compose)

For local development, the system runs using Docker Compose.

Start the services
docker-compose up --build


This will:

Start all backend microservices

Spin up required dependencies (database, services)

Expose APIs for local testing

☁️ Cloud & Production Strategy
AWS Deployment (Planned)

Services will be deployed to AWS

Container images hosted in a container registry (ECR)

Kubernetes (Production)

Microservices will run as Kubernetes pods

Supports scalability, fault tolerance, and rolling updates

Terraform (Infrastructure as Code)

Infrastructure managed using Terraform:

Networking

Compute resources

Kubernetes cluster

Ensures repeatable, version-controlled infrastructure

🚀 Getting Started (Local)
Prerequisites

Node.js (v18+)

Docker & Docker Compose

Git

Clone the repository
git clone https://github.com/<your-username>/eduvibe-backend.git
cd eduvibe-backend

Run in development
docker-compose up --build

📡 API Testing

All endpoints can be tested using Postman or cURL.

Example: User Login

curl -X POST http://localhost:3000/auth/login \
-H "Content-Type: application/json" \
-d '{
  "email": "user@example.com",
  "password": "password123"
}'

📂 Project Structure (Simplified)
eduvibe-backend/
│── services/
│   ├── auth-service/
│   ├── user-service/
│   ├── recording-service/
│
│── docker-compose.yml
│── Jenkinsfile
│── README.md

🎓 Academic & Professional Context

This project demonstrates:

Backend system design using microservices

Secure authentication mechanisms

CI/CD automation with Jenkins

Containerized development workflows

Cloud-ready architecture using Kubernetes and Terraform

🔮 Future Enhancements

📊 Monitoring & logging (Prometheus, Grafana)

🔐 Advanced role-based access control (RBAC)

📦 Object storage for videos (S3)

🌍 Multi-environment deployments (dev, staging, prod)

👤 Author

Lusungu Mhango

GitHub: https://github.com/lusungu-skillset

Focus Areas: Backend Development | DevOps | Cloud Engineering

📄 License

This project is intended for educational and portfolio purposes.
