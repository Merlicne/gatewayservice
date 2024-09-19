pipeline {
    agent any

    stages{
        stage('Build'){
            steps{
                withMaven{
                    sh 'mvn -B -DskipTests clean install'

                }
            }
        }
        stage('Test'){
            steps{
                withMaven{
                    sh 'mvn test'
                }
            }
        }
    }   
}