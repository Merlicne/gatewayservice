pipeline {
    agent any
    stages {
        stage('local env'){
            steps{
                sh 'pwd'
                sh 'ls'
                sh 'echo ${BUILD_NUMBER}'
                sh 'echo ${JOB_NAME}'
                sh 'echo ${BUILD_ID}'
                sh 'echo ${BUILD_DISPLAY_NAME}'
                sh 'echo ${BUILD_TAG}'
                sh 'echo ${BUILD_URL}'
                sh 'echo ${JENKINS_HOME}'
                sh 'echo ${JENKINS_URL}'
                sh 'echo ${NODE_NAME}'
                sh 'echo ${JOB_URL}'
                sh 'echo ${WORKSPACE}'
            }
        }
        stage('build') {
            agent{
                docker{
                    image 'maven:3.9.9-ibm-semeru-17-focal'
                    args '-v /root/.m2:/root/.m2:rw'
                }
            }
            steps {     
                sh 'mvn -X clean package'
            }
        }
        stage('test') {
            agent{
                docker{
                    image 'maven:3.9.9-ibm-semeru-17-focal'
                    args '-v /root/.m2:/root/.m2:rw'
                }
            }
            steps {
                sh 'mvn -X test'
            }
        }

    }
}
