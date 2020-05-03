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

# Core
kubectl apply -f ops.namespace.yaml
kubectl apply -f redis

echo ""
echo "Redis deployed!"
