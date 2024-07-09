pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                script {
                    bat 'docker build -t myapp:latest .'
                }
            }
        }
        stage('Test') {
            steps {
                script {
                    bat 'docker run --rm myapp:latest ./run-tests.sh'
                }
            }
        }
        stage('Deploy') {
            steps {
                script {
                    bat 'docker-compose up -d'
                }
            }
        }
    }
}
