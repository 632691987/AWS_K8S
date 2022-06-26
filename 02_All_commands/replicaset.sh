kubectl apply -f nextweb-v3-replicaset.yml
kubectl get replicaset -o wide
kubectl describe rs/nextweb-rs

# here, "--port" is for internal use
kubectl expose rs nextweb-rs --type=NodePort --port=80 --target-port=3000 --name=nextweb-rs-service

kubectl delete svc/nextweb-rs-service
kubectl delete rs/nextweb-rs