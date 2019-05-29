pipeline {
    agent { docker { image 'jenkins-example:1' } }
    stages {
        stage('test') {
            steps {
                sh 'main'
            }
        }
    }
}
