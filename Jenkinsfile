pipeline {
    agent any

    stages{
        stage('Test-env'){
            steps{
                echo '${BUILD_NUMBER}'
                echo '${JOB_NAME}'
                echo '${JOB_DISPLAY_URL}'
                sh 'pwd'
                sh 'ls'
            }
        }
        stage('Test-docker-env')
        {
            steps{
                script{
                    def dockerImage = docker.build('maven:3.9.9-ibm-semeru-17-focal')
                    dockerImage.inside('-v /root/.m2:/root/.m2'){
                        sh 'echo ${BUILD_NUMBER}'
                        sh 'echo ${JOB_NAME}'
                        sh 'echo ${JOB_DISPLAY_URL}'
                        sh 'pwd'
                        sh 'ls'
                    }
                }
            }
        }
    }   
}