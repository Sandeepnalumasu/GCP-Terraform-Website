# gcp-terraform-website

My personal website with Terraform and Google Cloud Platform.

This project is a simple personal static website deployed to Google Cloud Storage (GCS) using Terraform for infrastracture provisioning.


Project Structure

gcp-terraform-website/        
|---index.html               # main website content
|---styles.css               # website styling
|---script.js                # Javascript functionality
|---terraform/
| |---main.tf                terraform resources
| |---variables.tf           input variables for terraform
| |---terraform.tfvars       actual values for those variables
| |---outputs.tf             terraform outputs
|---screenshots/
| |---GCP                    images of Google Cloud Console
| |---terraform              images of terraform commands
| |---Output                 images of personal website 
|---README.md
|---terraform-key.json       service account key(NOT pushed to GitHub)

Process

Step-1: Create a personal website using html, css, and javascript.

Step-2: Create a new project in GCP and enable the required APIs.

Step-3: Install Terraform and gcloud CLI.

Step-4: Initialize and Authenticate GCP, verify the terraform version.

Step-5: Create a service account for terraform, generate and download the JSON key.

Step-6: Terraform Infrastructure Deployment.
        Create Terraform files (main.tf, variables.tf, outputs.tf)

Step-7: Initialize Terraform using "terraform init" 
        Apply Terraform to Deploy Site using "terrafom apply"

Step-8: Access your live site by opening the URL in a browser.

Step-9: Clean Up Resources using "terraform destroy".



