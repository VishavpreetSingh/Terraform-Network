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
                sh 'pwd; sudo /opt/terraform init ./jenkins'
            }
        }
        stage('terraform plan') {
            steps {
                sh 'pwd; sudo /opt/terraform plan ./jenkins'
            }
        }
        stage('terraform ended') {
            steps {
                sh 'pwd; ls ./jenkins; echo "Ended....!!"'
            }
        }

        
    }
}
