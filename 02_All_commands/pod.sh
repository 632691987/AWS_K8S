kubectl get nodes
kubectl get nodes -o wide
kubectl describe pod nextweb-pod
kubectl delete pod nextweb-pod


kubectl run nextweb-pod --image komavideo/deeplearnaws-nextweb:v1
kubectl expose pod nextweb-pod --type=NodePort --port=3000 --name=nextweb-service

#PS: here, "--port=3000" is only export the port internal port, it doesn't stand for external port is 3000
#After expose pod, we can run following command:
kubectl get node -o wide ===> get the IP value
kubectl get service -o wide ===> get the "nodeport" value


kubectl logs -f nextweb-pod
kubectl exec -it nextweb-pod -- sh


kubectl get pod nextweb-pod -o yaml > nextweb-pod.yml
kubectl get service nextweb-service -o yaml > nextweb-service.yml


kubectl delete svc nextweb-service
kubectl delete pod nextweb-pod