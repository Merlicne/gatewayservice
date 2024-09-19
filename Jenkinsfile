pipeline {
    agent none

    stages{
        stage('Build'){
            agent {
                docker{
                    image 'maven:3.9.9-ibm-semeru-17-focal'
                    args '-v $HOME/.m2:/root/.m2'
                }
            }
            steps{
                sh 'mvn -B -DskipTests clean install'
            }
        }
        stage('Test'){
            agent{
                docker {
                    image 'maven:3.9.9-ibm-semeru-17-focal'
                    args '-v $HOME/.m2:/root/.m2'
                }
            }
            steps{
                sh 'mvn test'
            }
        }
    }   
}