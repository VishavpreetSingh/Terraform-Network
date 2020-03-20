pipeline {
    agent {
        node {
            label 'master'
        }
    }

    stages {

        stage('terraform started') {
            steps {
                sh 'pwd; echo "Started...!" '
            }
        }
        stage('git clone') {
            steps {
                sh 'pwd; sudo rm -rv *;sudo git clone https://github.com/VishavpreetSingh/Terraform-Network.git'
            }
        }
        stage('terraform init') {
            steps {
                sh 'pwd; cd Terraform-Network; sudo /opt/terraform init -input=false'
            }
        }
        stage('terraform plan') {
            steps {
                sh 'pwd; cd Terraform-Network; sudo cp /home/admin/terraform.tfvars . ; sudo /opt/terraform plan -out=tfplan -input=false -var-file=terraform.tfvars'
            }
        }
        stage('terraform ended') {
            steps {
                sh 'pwd; echo "Ended....!!"'
            }
        }

        
    }
}
