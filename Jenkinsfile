pipeline {
    agent any
    stages{
        stage('Checkout'){
            steps{
                git branch: 'main', url: 'https://github.com/JackyKho0622/Revision.git'
            }
        }
        stage('Build'){
            steps{
                bat 'gradlew build'
            }
        }
        stage('Test'){
            steps{
                bat 'gradlew RunTest'
            }
        }
        stage('Deploy'){
            steps{
                powershell 'docker build -t deployment-env .'
            }
        }

        stage('Production'){
            steps{
                powershell 'docker run deployment-env'
            }
        }
    }
}