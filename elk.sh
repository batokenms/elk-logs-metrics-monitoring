#!/bin/bash

# Create namespace 

kubectl apply -f amazingdevops.yaml -n amazingdevops

# elasticsearch-ss Deployment 

kubectl apply -f elasticsearch-ss.yaml -n amazingdevops 

# logstash-deployment Deployment 

kubectl apply -f logstash-deployment.yaml -n amazingdevops

# filebeat-ds Deployment

kubectl apply -f filebeat-ds.yaml -n amazingdevops

# metricbeat-ds Deployment 

kubectl apply -f metricbeat-ds.yaml -n amazingdevops

# kibana-deployment Deployment

kubectl apply -f kibana-deployment.yaml -n amazingdevops

# Deployment curator-cronjob

kubectl apply -f curator-cronjob.yaml -n amazingdevops
