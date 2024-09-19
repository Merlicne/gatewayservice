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
            }
        }
        stage('build') {
            agent {
                docker { image 'maven:3.9.9-eclipse-temurin-21-alpine' }
            }
            steps {                
                sh 'mvn clean install'
            }
        }
        stage('test') {
            agent {
                docker { image 'maven:3.9.9-eclipse-temurin-21-alpine' }
            }
            steps {
                sh 'mvn test'
            }
        }

    }
}
