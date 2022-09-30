
## IBM CLOUD Commands:-


1. **command to login to ibm cloud** 
   
   ibmcloud login --sso

2. **Install plugins and list them**
   
   ibmcloud plugin install container-service
   
   ibmcloud plugin install container-registry
   
   ibmcloud plugin install observe-service
   
   ibmcloud plugin install secrets-manager
   
   ibmcloud plugin list

3. **Connect to the cluster**
   
   ibmcloud login -a cloud.ibm.com -r us-south -g IBM-MAP -sso
   
   #DEV# ibmcloud ks cluster config --cluster c0hhi59d0s2ho34b3s00
   
   #TEST# ibmcloud ks cluster config --cluster c262vded0jqq2thfho00
   
   #PROD# ibmcloud ks cluster config --cluster c2om8okd0oh5q4um8sh0
   
   kubectl config current-context

4. **command to login IBM container registry**
   
   ibmcloud cr login	

5. **command to list the ibmcloud namespaces**

   ibmcloud cr namespace-list

6. **command to list the ibmcloud images**

   ibmcloud cr image-list

7. **command to list the namespaces with restrict**
   • DEV namespace
   
   ibmcloud cr image-list --restrict 'map-dev-namespace' 

   • TEST namespace

   ibmcloud cr image-list --restrict 'mip-test-namespace'

   • PROD namespace

   ibmcloud cr image-list --restrict 'mip-prod-namespace' 
   
8. **command to connect kubernetes cluster**

   ibmcloud login -r us-south --apikey @apikey.json
   
   ibmcloud login -a cloud.ibm.com -r us-south -g IBM-MAP -sso
