#! /bin/bash

# Azure portal login and get aks credentials
# Before we need to create a service principle and assign the role for that client id
# az ad sp create-for-rbac --name <name> --role <Contributor> --scopes /subscriptions/<subscription id>
# az role assignment create --assignee <client id> --role contributor --scope /subscriptions/<subscription Id>

az login --service-principal -u <client id> -p <secret value/password> --tenant <tenant id>
az account set --subscription "<subscription id>"
az aks get-credentials --resource-group <rg_name> --name <cluster_name>
