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

# Dashboard
kubectl delete -f dashboard

# Metrics server
kubectl delete -f metrics-server

# Prometheus
kubectl delete -f kube-state-metrics-configs
kubectl delete -f prometheus

# Grafana
kubectl delete -f grafana

echo ""
echo "Monitoring stack removed!"
