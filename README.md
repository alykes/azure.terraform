# azure.terraform

## Create the storage container first  
`az storage container create --name aztest-tfstate --account-name <StorageAccountName>`  

## Smash out the terraform  
`terraform init`  
`terraform plan -out ./aztest.tfplan`  
`terraform apply ./aztest.tfplan`  
`terraform destroy`  

## Delete the storage container  
`az storage container delete --name aztest-tfstate --account-name <StorageAccountName>`  




## Using Powershell to Remove Containers  
```
resourceGroupName = "<resourceGroupName>"                                                                           
$storageAccountName = "<storagaAccountName>"
$storageAccount = Get-AzStorageAccount -ResourceGroupName $resourceGroupName -Name $storageAccountName
$ctx = $storageAccount.Context
$containerName = "<containerNameToDelete>"
Remove-AzStorageContainer -Name $containerName -Context $ctx
Get-AzStorageContainer -Context $ctx
```