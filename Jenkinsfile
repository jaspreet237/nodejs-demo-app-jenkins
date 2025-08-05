pipeline {
    agent any

    environment {
        DOCKERHUB_CREDENTIALS = credentials('dockerhub-creds')  // your Jenkins credential ID
        DOCKERHUB_USERNAME = "${DOCKERHUB_CREDENTIALS_USR}"
        DOCKERHUB_PASSWORD = "${DOCKERHUB_CREDENTIALS_PSW}"
        IMAGE_NAME = "jaspreet237/nodejs-demo-app-jenkins"
    }

    stages {
        stage('Clone Repository') {
            steps {
                echo "✔ Cloned successfully"
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    echo "🔧 Building Docker image"
                    sh 'docker build -t $IMAGE_NAME .'
                }
            }
        }

        stage('Login to DockerHub') {
            steps {
                script {
                    echo "🔐 Logging in to DockerHub"
                    sh 'echo $DOCKERHUB_PASSWORD | docker login -u $DOCKERHUB_USERNAME --password-stdin'
                }
            }
        }

        stage('Push Docker Image') {
            steps {
                script {
                    echo "📦 Pushing image to DockerHub"
                    sh 'docker push $IMAGE_NAME'
                }
            }
        }

        stage('Deployment') {
            steps {
                echo "🚀 Deployment logic can go here if needed"
            }
        }
    }

    post {
        success {
            echo '✅ Build and deployment completed successfully.'
        }
        failure {
            echo '❌ Deployment failed.'
        }
    }
}
