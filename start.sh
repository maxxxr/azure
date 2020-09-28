 RESOURCE_GROUP=$(az group list --query [].name -o tsv)
 echo $RESOURCE_GROUP
 RESOURCE_LOCATION=`az group list --query '[0].location' --output tsv`
 echo  $RESOURCE_LOCATION
