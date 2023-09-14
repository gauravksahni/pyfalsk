pipeline {
    agent any 
    environment {
        GITHUB_CREDS = credentials('github-pyflask-app')
        DOCKER_HUB_USR = credentials('dockerhub')
        APP_NAME = 'pyflask2'
        IMAGE_NAME = "${DOCKER_HUB_USR}" + "/" + "${APP_NAME}" + ":" + "${BUILD_NUMBER}"
    }
    stages{
        stage('Clean the workspace'){
            steps{
                cleanWs()
                
            }
        }
        stage('Build the image'){
            steps{
                script{
                    sh 'docker build $IMAGE_NAME .'
                    sh 'docker image ls'
                }
            }
        }
        stage('Deploy'){
            steps{
                echo "Deploying"
            }
        }
    }
}
