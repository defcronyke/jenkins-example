pipeline {
    agent { 
        dockerfile true
    }
    agent { 
        docker {
            image "localhost:5000/jenkins-example:latest"
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
