pipeline {
    agent any 
    environment {
        GITHUB_CREDS = credentials('github-pyflask-app')
        APP_NAME = 'pyflask2'
        DOCKER_HUB_USR = 'gauravkb'
        IMAGE_NAME = "${DOCKER_HUB_USR}" + "/" + "${APP_NAME}" + ":" + "${BUILD_NUMBER}"
    }
    parameters{
        string(name: 'greeting', defaultValue: 'Hello, Welcome to Jenkins Pipeline', description: 'How should I greet the world?')
    }

    stages{
        stage('Clean the workspace'){
            steps{
                echo "${params.greeting}"
            }
        }
        stage('Build the image'){
            steps{
                script{
                    sh 'docker build -t $IMAGE_NAME .'
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
    post {
        failure {
            script {
                currentBuild.displayName = "#${currentBuild.id}|FAILED"
            }
        }
        success {
            script {
                currentBuild.displayName = "#${currentBuild.id}|SUCCESS"
                cleanWs()
            }
        }
    }
}
