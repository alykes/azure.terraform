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


## Using Powershell to Create and Remove Containers  
```
resourceGroupName = "<resourceGroupName>"                                                                           
$storageAccountName = "<storagaAccountName>"
$storageAccount = Get-AzStorageAccount -ResourceGroupName $resourceGroupName -Name $storageAccountName
$ctx = $storageAccount.Context
$containerName = "<containerName>"
New-AzStorageContainer -Name $containerName -Context $ctx
Remove-AzStorageContainer -Name $containerName -Context $ctx
Get-AzStorageContainer -Context $ctx
```

Please note that Azure can be slow when updating resources, and it may take some time for changes to propagate. As a  result, creating, deleting, and then recreating containers might occasionally lead to failed creation attempts without  any error messages. 🤦‍♂️