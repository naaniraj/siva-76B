#### Write variable for ec2
* ec2.tf 📝

          resource "aws_instence" "web" {
            ami = var.ami_id
            instence type = var.instence_type
            vpc_security_group_ids = [aws_security_group.roboshop-id] #this is means list
            tags = var.tags

        }

* variable.tf 📝

            variable "ami_id" {
              type = string
              default = "ami-03265a0778a880afb"
           }

            variable "instance_type" {
              default = "t2.micro"
              type = string
           }

            variable "tags" {
              type = map
              default = {
                Name = "Hello Terraform"
                Project = "Roboshop"
                Environment = "DEV"
                Component = "Web"
                Terraform = "true"
              }
            }
             variable "sg-name" {
               type = string
               default = "roboshop-all"
            }
  
            variable "sg-description" {
              type = string
              default = "allowing all ports"
            }
  
            variable "sg-description" {
              type = string
              default = "allowing all ports"
            }

            variable "inbound-from-port" {
              type = number
              default = 0
            }

            variable "cidr_blocks" {
              type = list
              default = ["0.0.0.0/0"]
           }


* sg.tf 📝

          resource "aws_security_group" "roboshop-all" { #this is terraform name, for terraform reference only
              name        = var.sg-name # this is for AWS
              description = var.sg-description
              #vpc_id      = aws_vpc.main.id

              ingress {
                  description      = "Allow All ports"
                  from_port        = var.inbound-from-port # 0 means all ports
                  to_port          = 0 
                  protocol         = "tcp"
                  cidr_blocks      = var.cidr_blocks
             }

             egress {
                 from_port        = 0
                 to_port          = 0
                 protocol         = "-1"
                 cidr_blocks      = ["0.0.0.0/0"]
                 #ipv6_cidr_blocks = ["::/0"]
             }

             tags = {
                 Name = "roboshop-all-aws"
             }
         }   


* terraform.tfvars 📝

          instence_type = "t2.medium"



- if you run instend of " t2.micro  " terraform will create " t2.medium"
- like this we can change our resource without mention in inside the file
- by using this cammand first preference will come to cammand CLI
- terraform will take "terraform.tfvars 📝 " automatically

       " terraform plan -var=instence_type = "t2.medium "           
- also we can change the instence by using windows CMD-PROMPT

         cd ..
         cd ..
         devops/daws-76s/repos/terraform>set TF_VAR_instence_type=t3.large
         cd variable
         terraform plan
         terraform apply 
         
         
- run the cammands ro create t2.micro with "ami-03265a0778a880afb" resouce with the tag of "Hello Terraform"

              terraform plan
              terraform apply
  



