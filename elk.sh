#!/bin/bash

# Create namespace 

kubectl apply -f amazingdevops.yaml -n josh

# elasticsearch-ss Deployment 

kubectl apply -f elasticsearch-ss.yaml -n josh 

# logstash-deployment Deployment 

kubectl apply -f logstash-deployment.yaml -n josh

# filebeat-ds Deployment

kubectl apply -f filebeat-ds.yaml -n josh

# metricbeat-ds Deployment 

kubectl apply -f metricbeat-ds.yaml -n josh

# kibana-deployment Deployment

kubectl apply -f kibana-deployment.yaml -n josh

# Deployment curator-cronjob

kubectl apply -f curator-cronjob.yaml -n josh
