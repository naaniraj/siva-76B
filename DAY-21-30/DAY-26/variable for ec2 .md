#### Write variable for ec2
* ec2.tf 📝

          resource "aws_instence" "web" {
            ami = var.ami_id
            instence type = var.instence_type
            #vpc_security_group_ids = [aws_security_group.roboshop-id] #this is means list
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

- run the cammands ro create t2.micro with "ami-03265a0778a880afb" resouce with the tag of "Hello Terraform"

              terraform plan
              terraform apply

* sg.tf 📝

           



  


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
