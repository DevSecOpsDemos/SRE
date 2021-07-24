## Pre-Requisite
    1. Install Terraform https://learn.hashicorp.com/tutorials/terraform/install-cli
    1. Get Service Account json key from GCP https://cloud.google.com/iam/docs/creating-managing-service-account-keys
    2. Download and store it in some temporary location. e.g /tmp/credentials.json


cd terraform/apache

## Create Command

    terraform init
    
    terraform plan -var-file terraform.tfvars \ 
        -var "credentials_file_local_path=/tmp/credentials.json"
        
    terraform apply -var-file terraform.tfvars \ 
         -var "credentials_file_local_path=/tmp/credentials.json" -auto-approve
         
         
    Example:
            ➜   apache terraform apply -var-file terraform.tfvars -auto-approve -var "credentials_file_local_path=/tmp/credentials.json"
    
                Apply complete! Resources: 0 added, 0 changed, 0 destroyed.
    
                Outputs:
    
                external_ip = 34.123.202.249
                id = projects/devopsindiasummit/zones/us-central1-a/instances/apache-test
                internal_ip = 10.128.0.17
                ➜  apache
            
## Delete Command

    terraform destroy  -var "credentials_file_local_path=/tmp/credentials.json" -auto-approve
