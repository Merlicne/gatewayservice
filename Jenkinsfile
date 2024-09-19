pipeline {
    agent any

    stages{
        stage('Test-env'){
            steps{
                sh 'pwd'
                sh 'ls -la'
                sh 'echo ${BUILD_NUMBER}'
                sh 'echo ${JOB_NAME}'
                sh 'echo ${BUILD_ID}'
                sh 'echo ${BUILD_DISPLAY_NAME}'
                sh 'echo ${BUILD_TAG}'
                sh 'echo ${BUILD_URL}'
            }
        }
        stage('Test-docker-env'){
            steps{
                script{
                    def dockerImage = docker.build("maven:3.9.9-eclipse-temurin-17-alpine")
                    dockerImage.inside(){
                        sh 'pwd'
                        sh 'ls -la'
                        sh 'echo ${BUILD_NUMBER}'
                        sh 'echo ${JOB_NAME}'
                        sh 'echo ${BUILD_ID}'
                        sh 'echo ${BUILD_DISPLAY_NAME}'
                        sh 'echo ${BUILD_TAG}'
                        sh 'echo ${BUILD_URL}'
                    }

                }
                
            }
        }
    }   
}