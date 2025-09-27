pipeline {
        agent any
        stages {
            stage ('checkout scm') {
                    steps {
                            checkout scm
                            sh "pwd"
                            sh "ls -lrt"
                            sh "sudo yum install git -y"
                    }
            }    
        }
}
