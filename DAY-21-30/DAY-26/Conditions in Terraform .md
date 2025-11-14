### what is condition ?
***************************
     if ( expression ) {
          if trur this will run 
    }     

    if ( expression ) {
         if trur this will run 
    }       

    if ( expression ) {
         if false this will run 
    }

####  VS code
 --> create file for providers
 - first providers are very importent

* 📝 provider.tf

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

  * 📝 conditions.tf

            resource "aws_instance" "example" {
                ami           = "resolve:ssm:/aws/service/ami-amazon-linux-latest/al2023-ami-kernel-default-x86_64"
                instance_type = var.instence_name =="mangoDB" ? "t2.micro" : "t3.small"
                vpc_security_group_ids = ["aws_security_group"."roboshop-all".id] #this is means list

                tags = {
                  Name = "HelloTerraform"
                }
             }
* 📝 Variables.tf

           variable "instence_name" {
             type = string
             default = "mangoDB"
           }
            
           variable "ami_id" {
             type = string


  --> go CMD

         ls
         cd .. /conditions/
         terraform init
         terraform plan
         terraform apply
         
               

