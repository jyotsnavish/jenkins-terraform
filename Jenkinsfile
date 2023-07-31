pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/jyotsnavish/jenkins-terraform.git']])
            }
        }
        stage('Terraform init') {
            steps {
                sh ('terraform init')
            }
        }
        stage('Terraform action') {
            steps {
                echo "Terraform action is --> apply"
                sh ('terraform apply --auto-approve')
            }
        }
    }
}

