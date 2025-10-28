### write variables.tf file

        variables "sg_name" {
          type = string
          default = "roboshop-all-aws"
        }
        variables "sg_discription" {
          type = string
          default = "allow LTS inbound traffic"
        }
        variables "inbound_from_port" {
          #type = string
          default = "0"
        }
