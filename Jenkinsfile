pipeline {
    agent{
        docker{
            image 'maven:3.9.9-ibm-semeru-17-focal'
            args '-v /root/.m2:/root/.m2 --entrypoint ""'
        }
    } 

    stages{
        stage('Test-env'){
            steps{
                sh 'echo ${env.BUILD_NUMBER}'
                sh 'echo ${env.JOB_NAME}'
                sh 'echo ${env.JOB_DISPLAY_URL}'
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