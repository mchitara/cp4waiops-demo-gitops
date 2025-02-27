#-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# LOAD LOGS DIRECTLY INTO ELASTICSEARCH
#-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


#-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# ADAPT VALUES
#-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


export APP_NAME=robot-shop
export INDEX_TYPE=logs



# Get Namespace from Cluster 
echo "   ------------------------------------------------------------------------------------------------------------------------------"
echo "   🔬 Getting Installation Namespace"
echo "   ------------------------------------------------------------------------------------------------------------------------------"

export WAIOPS_NAMESPACE=$(oc get po -A|grep aimanager-operator |awk '{print$1}')
echo "       ✅ OK - AI Manager:    $WAIOPS_NAMESPACE"


#-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# DO NOT EDIT BELOW
#-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

#unzip ./tools/02_training/TRAINING_FILES/ELASTIC/robot-shop/logs/data-log-training-elk.zip

echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
./tools/02_training/scripts/load-es-index.sh


