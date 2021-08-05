# Terraform-Automation-GCP
This project will serve as a quick guide for any beginner cloud enthusiast to start automating boring stuff with Terraform
First you will have to install TF on your local machine using the following instructions from https://learn.hashicorp.com/tutorials/terraform/install-cli
After the installation you will have to create a service account for GCP to authenticate your console to your TF project https://cloud.google.com/iam/docs/creating-managing-service-accounts
Download the json file from GCP
I used VS code for this project so you can likely use that aswell
The variable.tf contains the declarations for varaibles that you can dynmically use
The first part in the main.tf is your authentication to GCP
The second part is #Creating uptime check: This uses hard corded values which is not the best approach but it there for you to learn how run the tf script without using variables
The third part contains the declarations and using of variables so you can declare your variables and use then
Run terraform init to intialize your project and sink with GCP, I will strongly advise you use VS code, it's the only free thning MS offers that works well on a MAC so why not.
Run terraform plan =out=FILE to plan your configurations: The juciy thing about this is that it will fail and point you to your errors if there any 
Finaly step is to run terrafrom apply and watch the magic happen.
Happy Clouding
