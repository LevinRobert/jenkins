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
                        sh '''
                          
                          ssh -i $SSH_KEY -o StrictHostKeyChecking=no ec2-user@13.233.196.110 "systemctl restart nginx.service "'

                        '''
                }
                echo 'Connecting to the Web Server...'
            }
        }
    }
}
