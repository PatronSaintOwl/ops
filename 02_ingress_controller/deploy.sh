#!/usr/bin/env bash

config_path="$(dirname "$PWD")/my_cluster/kubeconfig"

if [ ! -f "$config_path" ]
then
    echo "Kubeconfig not found. You must setup a kubernetes cluster first"
    exit 1
fi

export KUBECONFIG=$config_path
echo "KUBECONFIG set at $config_path"
echo

# Traefik
kubectl apply -f traefik

firstNodeIp=$(kubectl get nodes -o jsonpath='{ $.items[0].status.addresses[?(@.type=="InternalIP")].address }')
echo
echo "Traefik is now proxying http requests on port 30000 of any node!"
echo "Traefik dashboard is available on port 30080 of any node"
echo "(Example : http://$firstNodeIp:30080/ )"
