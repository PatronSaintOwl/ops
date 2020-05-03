#!/usr/bin/env bash

config_path="$(dirname "$PWD")/my_cluster/kubeconfig"

if [ ! -f "$config_path" ]
then
    echo "Kubeconfig not found. You must setup a kubernetes cluster first"
    exit 1
fi

git submodule update --init --remote --recursive

export KUBECONFIG=$config_path
echo "KUBECONFIG set at $config_path"
echo

# Namespaces
kubectl apply -f dashboard.namespace.yaml
kubectl apply -f monitoring.namespace.yaml

# Dashboard
kubectl apply -f dashboard
kubectl -n kubernetes-dashboard describe secret $(kubectl -n kubernetes-dashboard get secret | grep admin-user | awk '{print $1}') > ../my_cluster/admin-user-token
kubectl patch service kubernetes-dashboard -p "$(cat ./patch/dashboard.service.patch.yaml)" -n kubernetes-dashboard

# Metrics server
kubectl apply -f metrics-server

# Traefik
kubectl apply -f traefik

# Prometheus
kubectl apply -f prometheus
kubectl apply -f kube-state-metrics-configs

# Grafana
kubectl apply -f grafana

firstNodeIp=$(kubectl get nodes -o jsonpath='{ $.items[0].status.addresses[?(@.type=="InternalIP")].address }')
echo
echo "Admin-user created ! Token stored in my_cluster/admin-user-token"
echo -e "\t---"
echo "Kubernetes dashboard available on port 30000 of any node (use your admin-token to login) (Example : https://$firstNodeIp:30000)"
echo -e "\t---"
echo "Traefik dashboard available on port 30001 of any node (Example : http://$firstNodeIp:30001)"
echo -e "\t---"
echo "Prometheus dashboard available on port 30002 of any node (Example : http://$firstNodeIp:30002)"
echo -e "\t---"
echo "Grafana dashboard available on port 30003 of any node (Example : http://$firstNodeIp:30003)"
echo " User : admin"
echo " Password : admin"
echo " Try out dashboards 315 !"
