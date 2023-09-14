pipeline {
    agent any 
    environment {
        GITHUB_CREDS = credentials('github-pyflask-app')
        APP_NAME = "pyflask2"
        DOCKER_HUB_USR = "gauravkb"
        IMAGE_NAME = "${DOCKER_HUB_USR}" + "/" + "${APP_NAME}" + ":" + "${BUILD_NUMBER}"
    }
    stages{
        stage('Clean the workspace'){
            steps{
                
            }
        }
        stage('Build the image'){
            steps{
                script{
                    sh 'docker build -t $IMAGE_NAME .'
                    sh 'ls -ltrh'
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
