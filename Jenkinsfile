pipeline {
    agent { 
        dockerfile {
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
