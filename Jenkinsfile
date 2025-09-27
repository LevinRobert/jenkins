pipeline {
    agent any
    stages {
        stage('checkout scm') {
            steps {
                checkout scm
                sh "pwd"
                sh "ls -lrt"
            }
        }
        stage('connect to vm') {
            steps {
                withCredentials([sshUserPrivateKey(credentialsId: 'zzz', keyFileVariable: 'SSH_KEY_FILE')]) {
                    sh 'ssh -i "$SSH_KEY_FILE" -o StrictHostKeyChecking=no ec2-user@13.233.196.110 "hostname -i"'
                }
            }
        }
    }
}
