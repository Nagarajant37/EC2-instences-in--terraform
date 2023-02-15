# EC2-instances-in-terraform
virtual networks and subnets to the resource group together with a virtual machine infrastructure has been deployed verify the VM logins. To deploy many virtual machines with the same configuration

# creating EC2 instance with terraform
     commands to deploy the EC2 instance:
     1. terraform init 
     2. terraform plan 
     3. terraform apply 
     4. terraform show 

# First install the terraform in any operating system like redhat,windows,centos,ubuntu
 In am using ubuntu to install terraform 
      command is "sudo apt install terraform"

# create directory for terraform 
    Mkdir terraform
    create two files inside the terraform file :
    file1 ec2.tf
    file2 provider.tf

# In file1 write the command for create the instances with properties

# In file2 write the command of provider details of instance like vpc,subnets and "secert key","Access key"

# save the both file in terraform file with file name ".tf"

# Deploy the instance using the comments given below. 
      one by one run the commands
      terraform init 
      terraform plan 
      terraform apply 
      terraform show 

# It will shows the instance is created or not 
 ![ubuntu](https://user-images.githubusercontent.com/87926728/219051674-c092b23a-a193-4f94-8b70-284b174159a1.jpg)
![ubuntu out](https://user-images.githubusercontent.com/87926728/219051702-756cc5e9-5edb-454c-b9ca-9949500f5a8c.jpg)

# Open AWS console 
     Check the AWS console to confirm the instance is running 

![terraform](https://user-images.githubusercontent.com/87926728/219051188-662e7653-0b42-4ac9-b74e-5dfbc30c7fb4.png)
![terra1](https://user-images.githubusercontent.com/87926728/219051267-3614b7f9-2de0-4ba8-a8f2-8a7391b597d9.png)
![instance](https://user-images.githubusercontent.com/87926728/219051305-66eb1212-752e-47eb-b58b-b4e185fbd8c5.png)


