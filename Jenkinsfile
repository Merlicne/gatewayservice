pipeline {
    agent{
        docker{
            image 'maven:3.9.9-ibm-semeru-17-focal'
            args '-v /root/.m2:/root/.m2 --entrypoint ""'
        }
    } 

    stages{
        stage('Test-env'){
            steps{
                pwd
                ls
            }
        }
        stage('Test-docker-env'){
            steps{
                pwd
                ls
            }
        }
    }   
}