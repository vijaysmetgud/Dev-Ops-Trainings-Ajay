# Kubernetes formulas:-
* kubernetes works on n-2 
  means the current version is a preview and two back versions will be supporting with kubernetes features 
  and your within in the kubernetes support policy 


* if in case ur in n-3 or older version then your out of support policy in this case you will not get any supporting  features from kubernetes To continue receiving important security patch updates, make sure that your clusters always run a supported Kubernetes version. Deprecated clusters might not receive security updates

* tainted in kubernetes cluster means when ever we do upgrade kubernetes cluster so if somebody deploy the application in  kubernetes cluster it will not deploy to a nodes which is already terminated...

---
# Kubernetes versions are expressed as x.y.z, where as below 
x - major version, 
y - minor version, and 
z - patch version.


* Steps upgrade kubernetes thorugh kops:-
kops edit cluster 
here mention under cluster which is new version want to upgrade it
kops rolling-update cluster --yes 
---


    