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
            steps {                
                sh './mvnw -X clean'
            }
        }
        stage('test') {
            steps {
                sh './mvnw -X test'
            }
        }

    }
}
