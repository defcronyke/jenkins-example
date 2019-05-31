pipeline {
    agent { 
        dockerfile {
            args '-it --entrypoint=/bin/sh'
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
