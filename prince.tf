terraform {
   required_provider {
      aws = {
          source="hashicorp/aws"
      }
   }
}


provider "aws"{
    region = "ap-southeast-1"
    access_key ="AKIAX3IN6TILY6CK47LJ"
    secret_key="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"
}

resource "aws_instance" "ec2_instance"{
    ami="ami-072f48a9ed4f1bbda"
    instance_type ="t2.micro"
    }

output "Public-IP" {
  value = "aws_instance.ec2_instance.public_ip"
}
