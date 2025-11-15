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

* 📝 count.tf

          resource "aws_instence" "web" {
            count = 11 # when you give any number terraform will create 11 instnce ,insted of writting 11 times
                       # count.index is special variable to set a name to multi instence at a time
            ami = var.ami_id
            instence type = "t2.micro"
            tags = {
               name = var.instence_name[count.index]     
            }
          }
          resource "aws_route53_record" "www" {
            zone_id = aws_route53_zone.primary.zone_id
            name    = "www.example.com"
            type    = "A"
            ttl     = 300
            records = [aws_eip.lb.public_ip]
        }

  --> go CMD

         ls
         cd .. /conditions/
         terraform init
         terraform plan
         terraform apply
  
   --> go CMD
      
              ls
         cd .. /count/
         terraform init
         terraform plan
         terraform apply -auto-approve
  
- in count when we write 11 number terraform well create 11 instence
- with out writting 11 times the code
- but all instence will have same name 
* "count.index"
- by using count.index we can control the names of the instence
