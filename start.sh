 RESOURCE_GROUP=$(az group list --query [].name -o tsv)
 echo $RESOURCE_GROUP
