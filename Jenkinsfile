pipeline {
    agent { 
        any {
            dockerfile true
            args '-it --entrypoint=/bin/bash'
        }
    }
    stages {
        stage('test') {
            steps {
                sh 'main'
            }
        }
    }
}
