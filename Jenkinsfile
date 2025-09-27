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
                withCredentials([sshUserPrivateKey(credentialsId: 'eee', keyFileVariable: 'SSH_KEY_FILE')]) {
                 sh 'scp -i "${SSH_KEY_FILE}" levin.html root@13.233.196.110:/usr/share/nginx/html/index.html'
                 sh 'ssh -i "$SSH_KEY_FILE" -o StrictHostKeyChecking=no index.html ec2-user@13.233.196.110 "hostname -i"'
                }
            }
        }
    }
}
