pipeline {
    agent { docker { image 'localhost:5000/jenkins-example:1' } }
    stages {
        stage('test') {
            steps {
                sh 'main'
            }
        }
    }
}
