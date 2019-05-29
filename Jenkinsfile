pipeline {
    agent { 
        docker { 
            image 'jenkins-example'
            label '1'
            alwaysPull false
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
