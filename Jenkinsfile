 pipeline {
    agent any
    stages {
        stage('Clone Repository') {
            steps {
                git branch: 'feature/updates', url: 'https://github.com/Kumarazdevops/ci_cd_p1.git'
            }
        }
        stage('Build') {
            steps {
                sh 'docker build -t myapp:latest .'
            }
        }
        stage('Test') {
            steps {
                sh 'docker run --rm myapp:latest ./run-tests.sh'
            }
        }
        stage('Deploy') {
            steps {
                sh 'docker-compose -f docker-compose.prod.yml up -d'
            }
        }
    }
    post {
        always {
            cleanWs()
        }
    }
}
