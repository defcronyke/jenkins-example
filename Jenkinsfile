pipeline {
    agent { 
        docker { 
            image 'jenkins-example/1'
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
