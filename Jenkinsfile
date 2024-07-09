pipeline {
    agent any
    stages {
        stage('Clone Repository') {
            steps {
                git branch: 'feature/updates', url: 'https://github.com/Kumarazdevops/ci_cd_p1.git'
            }
        }
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
