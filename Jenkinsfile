pipeline {
    agent none

    stages{
        stage('Build'){
            agent {
                image 'maven:3.9.9-ibm-semeru-17-focal'
            }
            steps{
                sh 'mvn -B -DskipTests clean install'
            }
        }
        stage('Test'){
            agent{
                image 'maven:3.9.9-ibm-semeru-17-focal'
            }
            steps{
                sh 'mvn test'
            }
        }
    }   
}