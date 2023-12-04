pipeline {
    agent any

    environment {
        GIT_REPO_URL = 'https://github.com/jasaenzh/intregracion_continua_gr6.git'
        DOCKER_IMAGE_NAME = 'php'
        DOCKERFILE_PATH = '.'  // Ruta al Dockerfile en el repositorio
    }
	
    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', credentialsId: 'test', url: GIT_REPO_URL
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                  sh 'whoami'
                  sh 'pwd'
                  sh 'docker build -t php:v1 .'
                }
            }
        }
    }

    post {
        success {
            echo 'Pipeline ejecutado con éxito'
        }
        failure {
            echo 'El pipeline ha fallado'
        }
    }
}