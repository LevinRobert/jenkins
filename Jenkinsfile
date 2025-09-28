pipeline{
    agent any
    stages {
        stage("Checkout SCM") {
            steps {
                checkout scm
                sh 'pwd'
                sh 'ls -lrt'
            }
        }
            
    }
}
