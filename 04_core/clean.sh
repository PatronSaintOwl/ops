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
kubectl delete -f core.configmap.yaml -f core.deployment.yaml -f core.ingress.yaml -f core.service.yaml

echo ""
echo "Ops core removed!"
