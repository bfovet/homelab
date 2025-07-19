kubectl create -f dashboard.admin-user.yml -f dashboard.admin-user-role.yml


kubectl create token -n kubernetes-dashboard admin-user
or
kubectl apply -f dashboard.admin-secret.yml
kubectl describe secret admin-user -n kubernetes-dashboard


change ClusterIP to NodePort for kubernetes-dashboard-kong-proxy
then open $TALOS_WORKER_VM_IP:$NODE_PORT