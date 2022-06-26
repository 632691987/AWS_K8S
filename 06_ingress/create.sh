# cereate NGINX application and expose
kubectl create deployment web --image=nginx
kubectl expose deployment web --port=80 --target-port=80 --type=NodePort


# deploy ingress controller