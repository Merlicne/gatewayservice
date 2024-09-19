pipeline {
    agent any
    stages {
        stage('local env'){
            steps{
                sh 'echo "$GCP_SERVICE_ACCOUNT_KEY" > gcp-key.json'
                sh 'gcloud auth activate-service-account --key-file=gcp-key.json'
                sh 'gcloud config set project $GCP_PROJECT_ID'
                sh 'export GOOGLE_APPLICATION_CREDENTIALS="$PWD/gcp-key.json"'
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
            agent {
                docker { 
                    image 'maven:3.9.9-eclipse-temurin-21-alpine' 
                    args '-v ${WORKSPACE}/.m2:/root/.m2'
                }
            }
            steps {                
                sh 'mvn -X clean install'
            }
        }
        stage('test') {
            agent {
                docker { image 'maven:3.9.9-eclipse-temurin-21-alpine' }
            }
            steps {
                sh 'mvn -X test'
            }
        }

    }
}
