 RESOURCE_GROUP=$(az group list --query [].name -o tsv)
 echo $RESOURCE_GROUP
 #RESOURCE_LOCATION=`az group list --query '[0].location' --output tsv`
 #echo  $RESOURCE_LOCATION


# -----------------
# Create DC1 VM
# -----------------

az vm create \
    --resource-group $RESOURCE_GROUP \
    --name myVM \
    --image win2016datacenter \
    --admin-username admin
    -admin-password asferw;jsdfiweke1_
