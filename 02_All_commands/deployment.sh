kubectl create deployment nextweb-deployment --image=komavideo/deeplearnaws-nextweb:v1

kubectl get deployments
kubectl get deployments -o wide
kubectl describe deployment nextweb-deployment
kubectl scale --replicas=2 deployment/nextweb-deployment



################################################################################
##### There are four service type, 
##### Cluster IP: The service only reachable within the cluster
##### NodePort  : Able to reach the service from outside, but port is random
##### If you are use 
################################################################################

#[NodePort]
kubectl expose deployment nextweb-deployment --type=NodePort --port=80 --target-port=3000 --name=nextweb-deployment-service
#[Cluster IP]: 
kubectl expose deployment nextapi-deployment --port=8080 --target-port=8080 --name=nextapi-service
#Exposes the Service externally using a cloud provider's load balancer
# Use AWS ALB to do it
#ExternalName
# It doesn't belong to Kubernetes before, but kubernetes include it



# 编辑部署
kubectl edit deployment/nextweb-deployment --record=true


kubectl rollout history deployment/nextweb-deployment
kubectl rollout history deployment/nextweb-deployment --revision=1
kubectl rollout history deployment/nextweb-deployment --revision=2


# 回滚历史(上一版本)
kubectl rollout undo deployment/nextweb-deployment

# 回滚历史(指定版本)
kubectl rollout undo deployment/nextweb-deployment --to-revision=2


kubectl rollout restart deployment/nextweb-deployment