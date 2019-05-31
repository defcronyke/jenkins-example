pipeline {
    agent { 
        docker.withRegistry('http://localhost:5000') {
            docker.image 'localhost:5000/jenkins-example:latest'
        }
    }
    stages {
        stage('test') {
            steps {
                sh '/main'
            }
        }
    }
}
