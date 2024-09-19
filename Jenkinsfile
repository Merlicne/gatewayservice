pipeline {
    agent any

    stages{
        stage('Build'){
            docker{
                image 'maven:3.9.9-ibm-semeru-17-focal'
            }
            steps{
                sh 'mvn -B -DskipTests clean package'
            }
        }
        stage('Test'){
            docker{
                image 'maven:3.9.9-ibm-semeru-17-focal'
            }
            steps{
                sh 'mvn test'
            }
        }
    }   
}