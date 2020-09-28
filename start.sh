 RESOURCE_GROUP=$(az group list --query [].name -o tsv)
 echo $RESOURCE_GROUP
 #RESOURCE_LOCATION=`az group list --query '[0].location' --output tsv`
 #echo  $RESOURCE_LOCATION
$ADMIN_PASSWORD= 'asferw;jsdfiweke1_'

# -----------------
# Create DC1 VM
# -----------------

az vm create \
    --resource-group $RESOURCE_GROUP \
    --name DC1 \
    --image win2016datacenter \
    --admin-username adminlogin \
    --admin-password $ADMIN_PASSWORD \
    --public-ip-address ""
    
# -----------------
# Create CL1 VM
# -----------------

az vm create \
    --resource-group $RESOURCE_GROUP \
    --name CL1 \
    --image win2016datacenter \
    --admin-username adminlogin \
    --admin-password $ADMIN_PASSWORD \
    
az network public-ip show --name CL1PublicIP --resource-group learn-0dd5fc86-dcc6-4558-a057-6332fceaf6ce --query ipAddress -o tsv

