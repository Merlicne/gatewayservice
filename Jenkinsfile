pipeline {
    agent any
    stages {
        stage('local env'){
            steps{
                sh 'pwd'
                sh 'ls'
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
                sh 'mvn -X clean package "-Dmaven.repo.local=/dev/null"'
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
                sh 'mvn -X test "-Dmaven.repo.local=/dev/null"'
            }
        }

    }
}
