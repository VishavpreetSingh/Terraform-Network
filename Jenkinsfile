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
                sh 'pwd; sudo rm -r *;sudo git clone https://github.com/VishavpreetSingh/jenkins.git'
            }
        }
        stage('terraform init') {
            steps {
                sh 'pwd; sudo /opt/terraform init ./jenkins'
            }
        }
        stage('terraform plan') {
            steps {
                sh 'pwd; sudo cp /home/admin/terraform.tfvars ./jenkins; ls ./jenkins; sudo /opt/terraform plan ./jenkins'
            }
        }
        stage('terraform ended') {
            steps {
                sh 'pwd; echo "Ended....!!"'
            }
        }

        
    }
}
