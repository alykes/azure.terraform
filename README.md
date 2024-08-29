# azure.terraform

Create the storage container first  
`az storage container create --name aztest-tfstate --account-name <StorageAccountName>`  

Smash out the terraform  
`terraform init`  
`terraform plan -out ./aztest.tfplan`  
`terraform apply ./aztest.tfplan`  
`terraform destroy`  

Delete the storage container  
`az storage container delete --name aztest-tfstate --account-name <StorageAccountName>`  

