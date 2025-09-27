pipeline {
        agent any
        stages {
            stage ('checkout scm') {
                    steps {
                            checkout scm
                            sh "pwd"
                            sh "ls -lrt"
                                
                                        
                                
                        }
                }
                stages {
                        stage('connect to vm') {
                                steps {
                                         withCredentials([usernamePassword(credentialsId: 'levin', keyFileVariable: 'SSH_KEY_FILE')]) {
                                                 sh 'ssh -i "${SSH_KEYFILE}" -o StrictHostKeyChecking=no ec2-user@13.233.196.110 "hostname -i" '
                                }
                        }
                }
        }
}
}
