pipeline {
    agent any
    stages {
        stage('Prepare') {
            steps {
                sh 'make prepare'
            }
        }
        stage('Build') {
            steps {
                 sh 'make build-work'
            }
        }
        stage('Push') {
            steps {
                sh 'make push-work'
            }
        }
    }
    post {
        always {
            cleanWs()
        }
    }
}
