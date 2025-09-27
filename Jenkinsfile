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
                                         withCredentials([usernamePassword(credentialsId: 'levin', usernameVariable: 'ec2-user', passwordVariable: 'PASSWORD')]) {
                                }
                        }
                }
        }
}
}
