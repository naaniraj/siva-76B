go to VS code --> Crete folder 
-->Terraform /session-01 / ec2

**Terraform requres AWS provider configurationto create AWS infra**

📂ec2.tf  <br>
📂provider.tf  <br>
- ec2 is for create a instance /server
- provider is for to know from where we gonna create ec2 

      Terraform
         required_providers
           AWS =
              source = "hashicorp/aws"
  
