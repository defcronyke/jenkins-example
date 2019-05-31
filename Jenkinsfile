pipeline {
    agent { 
        docker {
            image 'localhost:5000/jenkins-example:latest'
            registryUrl 'http://localhost:5000'
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
