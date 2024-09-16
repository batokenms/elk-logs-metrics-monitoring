#!/bin/bash

# Create namespace 

kubectl apply -f dev.yaml -n dev

# elasticsearch-ss Deployment 

kubectl apply -f elasticsearch-ss.yaml -n dev 

# logstash-deployment Deployment 

kubectl apply -f logstash-deployment.yaml -n dev

# filebeat-ds Deployment

kubectl apply -f filebeat-ds.yaml -n dev

# metricbeat-ds Deployment 

kubectl apply -f metricbeat-ds.yaml -n dev

# kibana-deployment Deployment

kubectl apply -f kibana-deployment.yaml -n dev

# Deployment curator-cronjob

kubectl apply -f curator-cronjob.yaml -n dev
