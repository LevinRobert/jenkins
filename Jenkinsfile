pipeline {
    agent any
    stages {
        stage('Checkout SCM') {
            steps {
                checkout scm
                sh 'pwd'
                sh 'ls -lrt'
            }
        }
        stage('Connecting to Web Server') {
            steps {
                withCredentials([sshUserPrivateKey(credentialsId: 'eee', keyFileVariable: 'SSH_KEY')]) {
                       
                }
                echo 'Connecting to the Web Server...'
            }
        }
    }
}
