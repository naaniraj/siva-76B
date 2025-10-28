go to VS code --> Crete folder 
-->Terraform /session-01 / ec2

**Terraform requres AWS provider configurationto create AWS infra**

📂ec2.tf  <br>
📂provider.tf  <br>
- ec2 is for create a instance /server
- provider is for to know from where we gonna create ec2
- 
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

- in this provider we have to give Authentication 
- when w egive Access-key and Secrect key in providers
- but it's not safe so by using cammand line interface CLI we give the Authentication
- 1.Firest we have to create user
   * go to AWS a/c  --> IAM ( Identity and Access Management )
     --> Users  --> Create Users --> User Name :"Terraform"
     ==> NEXT 
   * Attach Policies Diriectly --> ($-select)
     - 🗹 AdministraterAccess
     - 🗹
     - 🗹
       
     ==> NEXT ==> Create User
   * Terraform (User) --> Security Credentials --> Create Access key <br>
     --> 🗹 Cammand Line Interface CLI <br>
      ==> NEXT ==> Create Access key  <br>
     ( Now you can copy the Access-key and Secrect-Key )
   * go to  CLI -->

          aws configure
              ## Now you can peaste the Access-key and Sectect-key
       ==> when you give like this in your windows in your location (🖥️this pc) <br>
          --> 📂 Users --> 📂 User --> 📂.aws ( Here you can see the access-key and secrect-key )
          --> Here our Credentials will save it

  -📂ec2.tf

                  resource "aws_instance" "example" {
                    ami           = "resolve:ssm:/aws/service/ami-amazon-linux-latest/al2023-ami-kernel-default-x86_64"
                    instance_type = "t2.micro"

                    tags = {
                    Name = "HelloTerraform"
                    }
                 }

### run the Terraform Cammands
- whare ever .tf file's are exits thare only we have to run the cammands
- we have to go whare the files and run the cammmands inside the directry

          ls
          cd sessions-1/
          ls
          cd ec2/
          cd ls  # Here you can see the .tf files ,here only we have to run the terraform cammands

in this location we have to run the terraform cammands 

            terraform init
- this cammand will initilize the providers
- it will Download the AWS plugins
- terraform will cannact to aws it will download the providers
- it will create terraform folder

             terraform plan
- it will display what we gonna create the resource
- it give full indetail informatin of  the  resource
- it's give a plan before we gonna create the resource

         terraform apply
- when we conform the resources are fine to create
- the we use this cammand to create the resouce
- it will create what ever we writre in .tf file
- now check in your AWS a/c
- our resouce will created by terraform automation

          terraform distroy
- this cammand will erise all the resource we created
     

          
          
  

