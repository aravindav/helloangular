pipeline {
    agent any

    environment {
        AWS_ACCESS_KEY_ID     = credentials('aws-access-key-id')
        AWS_SECRET_ACCESS_KEY = credentials('aws-secret-access-key')
    }

    stages {
        stage ("Checkout from Git") {
            steps {
                git branch: 'main', url: 'https://github.com/aravindav/helloangular.git'
            }
        }
        stage ("Terraform Init") {
            steps {
                sh 'terraform init'
            }
        }
        stage ("Terraform Fmt") {
            steps {
                sh 'terraform fmt'
            }
        }
        stage ("Terraform Validate") {
            steps {
                sh 'terraform validate'
            }
        }
        stage ("Terraform Plan") {
            steps {
                sh 'terraform plan'
            }
        }
        stage ("Terraform Apply") {
            steps {
                sh 'terraform apply --auto-approve'
            }
        }
    }
}
