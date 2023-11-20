stage('Terraform Init') {
            steps {
                    // Initialize Terraform
                        sh 'terraform init'
                }
            }
  stage('Terraform Plan') {
            steps {
                    // Plan Terraform
                        sh 'terraform plan'
                }
            }
  stage('Terraform Apply') {
            steps {
                    // Apply Terraform changes
                        sh 'terraform apply -auto-approve'
                }
            }
