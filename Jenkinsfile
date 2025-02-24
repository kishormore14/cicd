pipeline {
    agent any
    stages {
        stage('Checkout Code') {
            steps {
                git 'https://github.com/kishormore14/cicd.git'
            }
        }
        stage('Install Dependencies') {
            steps {
                sh 'npm install'
            }
        }
        stage('Build Angular App') {
            steps {
                sh 'ng build --prod'
            }
        }
        stage('Build Docker Image') {
            steps {
                sh 'docker build -t my-angular-app .'
            }
        }
        stage('Deploy') {
            steps {
                sh 'docker run -d -p 80:80 my-angular-app'
            }
        }
    }
}
