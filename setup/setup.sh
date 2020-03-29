#!/usr/bin/env bash

git submodule update --init --recursive --remote

cp -rfp ./kubespray/inventory/sample ../my_cluster

tf_ips_file="../my_cluster/terraform_workers_ips"
custom_ips_file="../my_cluster/custom_workers_ips"

touch $tf_ips_file
touch $custom_ips_file

if [ ! -s "$tf_ips_file" ] && [ ! -s "$custom_ips_file" ]
then
    echo "No workers found. Please provision workers using terraform or custom workers"
    exit 1
fi

custom_ips="$(< $custom_ips_file)"
tf_ips="$( < $tf_ips_file)"

CONFIG_FILE=../my_cluster/inventory.yaml python3 ./kubespray/contrib/inventory_builder/inventory.py $custom_ips $tf_ips
