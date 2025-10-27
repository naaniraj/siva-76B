go to VS code --> Crete folder 
-->Terraform /session-01 / ec2

**Terraform requres AWS provider configurationto create AWS infra**

📂ec2.tf  <br>
📂provider.tf  <br>
- ec2 is for create a instance /server
- provider is for to know from where we gonna create ec2
-📂provider.tf <br>
   

          Terraform {
            required_providers {
              AWS = {
                source = "hashicorp/aws"
                version = "5.32.0"  # AWS Provider Version
              }
            }
          }
          provider "aws" {
            region = "us-east-1"
         }
-📂ec2.tf
