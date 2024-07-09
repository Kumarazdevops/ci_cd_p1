pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                script {
                    sh 'docker build -t myapp:latest .'
                }
            }
        }
        stage('Test') {
            steps {
                script {
                    sh 'docker run --rm myapp:latest ./run-tests.sh'
                }
            }
        }
        stage('Deploy') {
            steps {
                script {
                    sh 'docker-compose up -d'
                }
            }
        }
    }
}
