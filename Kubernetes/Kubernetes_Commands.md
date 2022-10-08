# Kubernetes Commands:-

1. command to get nodes
 
       kubectl get nodes

2. command to display resource (CPU/memory) usage of nodes

         kubectl top nodes

3. command to create pod 

       kubectl create -f <name_of_pod> <yml_file_name>

4. command to get detailed information of pod

          kubectl get pods -o wide 

5. command to get status of pod 
 
        kubectl get pod

6. command to debug or get logs of pod
     
        kubectl logs <pod-name>

7. command to show configuration of pod

       kubectl describe  pod <pod_name>

9. command to display resource (CPU/memory) usage of pods

            kubectl top pods 

10. command to get all pods in that name space
       
         kubectl get pods –all-namespaces
       
        kubectl get pods  <-name_of_namespaces>

11. command to delete the pod

          kubectl delete pods hello-pod
           
          kubectl delete pods <name_of_pods>

12. command to get particular label of pod
    
         kubectl get pod -l app=nginx-app

13. command to Get all running pods in the namespace
    
    
        kubectl get pods --field-selector=status.phase=Running -n airflow 

14. command to Show labels the labels mentioned in the pod
    
          kubectl get pods --show-labels
          kubectl get pods --show-labels -n airflow --> if needs to mention namespace 

15. command to get service 
    
         kubectl get services/svc

16. command to list the services sort by name/it will give only label/  metadata name which we mentioned
if it has any name space please mention it like below

        kubectl get services --sort-by= postgres -n airflow
        
        kubectl get services --sort-by= postgres 
        
        kubectl get services --sort-by=.metadata.name

17. command to create deployment

          kubectl create -f deployment  deployment.yml
           
           kubectl create -f  deployment <yml_file_name>


18. command to get deployment details
     
         kubectl get deployment 

19. command to edit deployment yml.file 

         kubectl edit deployment nginx-depl
       
         kubectl edit deployment <yml_file_name> 
         
         after editing and save the yml file by default it will run 

20. command to delete the deployment

           kubectl delete deployment mongo-depl 
          
           kubectl delete deployment <yml_file_name>

21. command to increase or scale more deployments, to increase or decrease the pods which is created while deployment.yml file

          kubectl scale deployments nginx-deploy --replicas=5
          
          kubectl scale deployments <name_of_deploy> --replicas=4

22. command to update the image version -- this will take default of rollout since we dint specify the strategy 

         kubectl set image deploy nginx-deploy nginx-pod=nginx:1.9.1
         
         kubectl set image deploy <name_of_deployement> <name_of_container> <=app_name_with_version>

        kubectl set image deploy nginx-deploy nginx- pod =nginx:1.9.1 --record [here have mentioned --record so it will the transaction of deploy update/upgrade app version]

23. command to Rollback to the previous of deployment which we changed early to new version

        kubectl rollout undo deploy nginx-deploy nginx-pod =nginx
 
         kubectl rollout undo deploy <name_of_deployment> <name_of_container> <=app_name>

24. command to Rollback to a specific revision

        kubectl rollout undo deploy nginx-deploy nginx-pod =nginx

        kubectl rollout undo deploy  <name_of_deployment> <name_of_container> <=app_name> --to-revision=2 

25. command to get history of rollout 

        kubectl rollout history deployment airflow-webserver -n airflow

        kubectl rollout history deployment airflow-webserver 

        kubectl rollout history deployment <name_of_deployment>

26. command to get rollout status of the deployment

         kubectl rollout status deployment airflow-webserver

         kubectl rollout status deployment <name_of_deployment> 

27. command to get replicaset details

         kubectl get replicaset 

28. command to increase or scale more replicas, to increase or decrease the pods which is created while rc.yml file

        kubectl scale Replica Controller nginx-rc --replicas=5

        kubectl scale Replica Controller <name_of_RC> --replicas=4

29. command get Replication Controller

          kubectl get RC

30. command to get particular RC name

         kubectl get rc <name_of_RC>


31. command to list the pvc if any namesapce please mention like below

            kubectl get pvc
           
           kubectl get pvc -n airflow

32. command to delete the created secrets  

         kubectl delete -n airflow secret airflow-connection-strings

        kubectl delete <-n_name_of_namespace> secret <name_of_secret>

33. command to scale 0 or stop webserver in the kubernetes cluster 

        kubectl scale -n airflow deployment airflow-webserver --replicas=0

34. command to scale 0 or stop scheduler in the kuberneteis cluster 

        kubectl scale -n airflow deployment airflow-scheduler --replicas=0

35. command to scale 1 or start scheduler in the kuberneteis cluster 

        kubectl scale -n airflow deployment airflow-scheduler --replicas=1

36. command to scale 1 or start webserver in the kuberneteis cluster

        kubectl scale -n airflow deployment  airflow-webserver --replicas=1 

37. command to get namespace

        kubectl get namespace

38. command to create namespace

           kubectl create namespace mipdashboard

39. command to get help from kubernetes for kinds of options/commands to use

             kubectl --help 

40. command to get cluster  information 

           kubectl cluster-info 

41. command to get verion of kubectl

           kubectl version


42. command to modify to existing yaml file like pod or deployment 

           kubetctl apply -f <name_of_pod> <yml_file_name>

43. command to get all api-resources or services in kubernetes 
    
      
        kubectl api-resources --help 
    
        kubectl api-resource | less

44. command to get components status

        kubectl get componentsstatus 

45. command to get storage class
    
        kubectl get sc

46. command to access one of the containers in the pod

        kubectl exec -it pod_name -c container_name bash


48.    command to run inside the pod
   
           kubectl exec -it <pod-name> -- bin/bash
 
            kubectl exec -it container_name bash

