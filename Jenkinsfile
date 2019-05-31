pipeline {
    agent { 
        docker { 
            image 'jenkins-example'
            // alwaysPull false
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
