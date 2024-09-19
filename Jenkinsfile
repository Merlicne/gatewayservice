pipeline {
    agent{
        docker{
            image 'maven:3.9.9-ibm-semeru-17-focal'
        }
    } 

    stages{
        stage('Test-env'){
            steps{
                sh 'echo ${BUILD_NUMBER}'
                sh 'echo ${JOB_NAME}'
                sh 'echo ${JOB_DISPLAY_URL}'
                sh 'echo ${env.BUILD_NUMBER}'
                sh 'echo ${env.JOB_NAME}'
                sh 'echo ${env.JOB_DISPLAY_URL}'
                // sh 'pwd'
                sh 'ls'
            }
        }
        stage('Test-docker-env'){
            steps{
                sh 'pwd'
                sh 'ls'
            }
        }
    }   
}