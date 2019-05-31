pipeline {
    agent { 
        docker {
            args '-it --entrypoint=/bin/bash'
        }
        dockerfile true
    }
    stages {
        stage('test') {
            steps {
                sh 'main'
            }
        }
    }
}
