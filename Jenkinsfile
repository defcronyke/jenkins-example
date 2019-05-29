pipeline {
    agent { docker { image 'localhost:5000/jenkins-example' } }
    stages {
        stage('test') {
            steps {
                sh 'main'
            }
        }
    }
}
