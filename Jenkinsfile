 pipeline {
    agent any
    stages {
        stage('Clone Repository') {
            steps {
                git branch: 'feature/updates', url: 'https://github.com/Kumarazdevops/ci_cd_p1.git'
            }
        }
        stage ('Docker login'){
         steps{
          bat 'docker login -u sravankumar0338 -p Kumar@1997'
         }
        }
        stage('Build') {
            steps {
                sh 'docker build -t myapp:latest .'
            }
        }
        stage('Test') {
            steps {
                sh 'docker run --rm myapp:latest bash.sh'
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
