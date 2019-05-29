pipeline {
    agent { 
        docker { image 'localhost:5000/jenkins-example' }
        alwaysPull false
    }
    stages {
        stage('test') {
            steps {
                sh 'main'
            }
        }
    }
}
