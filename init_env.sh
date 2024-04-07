#!/bin/bash

echo 'Starting Minikube'
minikube start

echo 'Creating SRE namespace....'
kubectl create namespace sre

echo 'Installing Prometheus....'
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo update
helm install prometheus prometheus-community/prometheus -f prometheus.yml --namespace sre

echo 'Installing Grafana....' 
helm repo add grafana https://grafana.github.io/helm-charts
helm repo update
helm install grafana grafana/grafana --namespace sre --set adminPassword="admin"

echo 'Deploying application...'
kubectl apply -f deployment.yml -n sre
kubectl apply -f service.yml -n sre

echo 'Checking service...'
minikube service upcommerce-service -n sre