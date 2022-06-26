# step 1: create namespace
kubectl create namespace roledemo

# step 2: create a pod
kubectl run nginx --image=nginx -n roledemo

# step 3: create a role
kubectl apply -f rbac-role.yaml

# [Optional] step 3.1 : check role you just created
kubectl get role -n roledemo

# Step 4: Run role-binding
kubectl apply -f rbac-rolebinding.yaml

# [Optional] Step 4.1: check rolebinding you just created
kubectl get role,rolebinding -n roledemo

# Step 5: create a certification
mkdir mary
cd mary
