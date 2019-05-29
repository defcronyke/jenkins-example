pipeline {
    agent { docker { image 'jenkins-example' } }
    stages {
        stage('test') {
            steps {
                sh 'main'
            }
        }
    }
}
