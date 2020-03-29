#!/usr/bin/env bash

inventory="../my_cluster/inventory.yaml"

if [ ! -f "$inventory" ]
then
    echo "Inventory not found. You must create one first"
    exit 1
fi
