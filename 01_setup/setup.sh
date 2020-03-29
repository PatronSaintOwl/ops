#!/usr/bin/env bash

inventory="../my_cluster/inventory.yaml"

if [ ! -f "$inventory" ]
then
    echo "Inventory not found. You must create one first"
    exit 1
fi

echo "Installing requirements..."
sudo pip install -r ./kubespray/requirements.txt

echo
echo "Setup of your ops cluster launched... This may take a while"
sleep 3s
ansible-playbook -i $inventory --become --become-user=root ./kubespray/cluster.yml

echo
echo "Ops cluster setup finished !"

ansible-playbook -i $inventory ./kubeconfig.playbook.yml
config_path="$(dirname "$PWD")/my_cluster/kubeconfig"
export KUBECONFIG=$config_path
echo "KUBECONFIG set at $config_path"
