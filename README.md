🛠 Jenkins CI/CD Integration

📌 Overview

This project also includes a Jenkins-based CI/CD pipeline that automates the process of building a Docker image from the Node.js app 
and pushing it to Docker Hub whenever new changes are pushed to GitHub.

🚀 Jenkins Setup Steps

✅ Prerequisites

Jenkins installed (Currently installed on local system) 

Docker installed on the Jenkins host

Docker Hub account and access credentials

GitHub repository with this project

🧰 Jenkins Configuration Steps

Install Jenkins Plugins

Create New Pipeline Job

Configure GitHub Repository

In the job config:

Definition: Pipeline script from SCM

SCM: Git

Repository URL: https://github.com/jaspreet237/nodejs-demo-app-jenkins.git

Branch: main

Configure Docker Hub Credentials

🔄 How Jenkins Works in This Project

When code is committed and pushed to GitHub:

Jenkins pulls the latest code from the GitHub repo

Builds a new Docker image using the Dockerfile

Pushes the image to Docker Hub

Pipeline status can be viewed in Jenkins Dashboard

✅ Testing the Pipeline

Make a change in app.js (e.g., change the text message)

Triggers the Jenkins pipeline

New image pushed to Docker Hub

Pull new image and run locally:

✅ Screeshots for reference

<img width="922" height="560" alt="image" src="https://github.com/user-attachments/assets/d783707b-c362-4afb-8f5c-9fa9bc2d7e63" />

<img width="699" height="607" alt="image" src="https://github.com/user-attachments/assets/7ce7d600-898b-4927-b686-5c80bb417617" />

<img width="892" height="243" alt="image" src="https://github.com/user-attachments/assets/972b4ff3-4bae-4317-ba02-d7c074ec4f56" />

<img width="467" height="165" alt="image" src="https://github.com/user-attachments/assets/138d3b77-4844-4c37-83e5-41a629c16cd6" />


