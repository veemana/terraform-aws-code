pipeline {
    agent {
        docker {
            image 'hashicorp/terraform:1.0.3'
        }
    }
    
    environment {
        AWS_ACCESS_KEY_ID = credentials('aws-access-key-id')
        AWS_SECRET_ACCESS_KEY = credentials('aws-secret-access-key')
        TF_VAR_region = 'us-west-2'
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

