#!/usr/bin/env bash

config_path="$(dirname "$PWD")/my_cluster/kubeconfig"

if [ ! -f "$config_path" ]
then
    echo "Kubeconfig not found. You must setup a kubernetes cluster first"
    exit 1
fi

git submodule update --init --recursive --remote

export KUBECONFIG=$config_path
echo "KUBECONFIG set at $config_path"
echo

# Dashboard
kubectl apply -f dashboard -R
kubectl -n kubernetes-dashboard describe secret $(kubectl -n kubernetes-dashboard get secret | grep admin-user | awk '{print $1}') > ../my_cluster/admin-user-token
kubectl patch service kubernetes-dashboard -p "$(cat ./patch/dashboard.service.patch.yaml)" -n kubernetes-dashboard

# Metrics server
kubectl apply -f metrics-server/deploy/kubernetes/

echo
echo "Admin-user created ! Token stored in my_cluster/admin-user-token"
echo -e "\t---"
echo "Kubernetes dashboard available on port 30000 of any node (use your admin-token to login)"
firstNodeIp=$(kubectl get nodes -o jsonpath='{ $.items[0].status.addresses[?(@.type=="InternalIP")].address }')
echo "Example : https://$firstNodeIp:30000"
echo -e "\t---"
