pipeline {
    agent any

    stages {
        stage('Cloning github repo') {
            steps {
                checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/ygminds73/Terraform-Automation.git']])
            }
        }
    
         stage ("terraform init") {
             steps {
                 sh ("terraform init -reconfigure") 
             }
         }
        
       
        stage ("Action") {
            steps {
                echo "Terraform action is --> ${action}"
                    script {
                        if (action == 'apply' || action == 'destroy') {
                            sh "terraform ${action} --auto-approve"
                        } else if (action == 'plan' || action == 'init') {
                            sh "terraform ${action}"
                        } else {
                            error "Unsupported terraform action: ${action}. Only 'apply', 'destroy', 'plan', and 'init' are allowed."
                        }
                    }
           }
        }
    }
}
