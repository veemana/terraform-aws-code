pipeline {
    agent {
        docker {
            image 'hashicorp/terraform:1.0.3'
        }
    }
    
    environment {
        AWS_ACCESS_KEY_ID = credentials('access_key ')
        AWS_SECRET_ACCESS_KEY = credentials('secret_key')
        TF_VAR_region = 'eu-north-1'
    }

    tools {
        terraform '1.0.3'
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
                sh 'terraform init'
            }
        }
        
        stage('Plan') {
            steps {
                sh 'terraform plan'
            }
        }
        
        stage('Apply') {
            steps {
                sh 'terraform apply -auto-approve'
            }
        }
    }
}

