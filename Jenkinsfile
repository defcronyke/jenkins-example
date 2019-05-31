pipeline {
    agent { 
        dockerfile true
    }
    stages {
        stage('test') {
            steps {
                sh '/main'
            }
        }
    }
}

pipeline {
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
