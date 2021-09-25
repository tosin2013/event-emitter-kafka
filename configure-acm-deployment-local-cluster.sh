#!/bin/bash 

oc create -f acm-configs/rhpam_namespace.yaml
oc create -f acm-configs/amq_channel.yaml
oc create -f acm-configs/pam_channel.yaml
oc create -f acm-configs/amq_application.yaml
oc create -f acm-configs/pam_application.yaml
oc create -f acm-configs/amq_placement_local_cluster.yaml
oc create -f acm-configs/rhpam_placement_local_cluster.yaml 
oc create -f acm-configs/amq_subscription_local_cluster.yaml
oc create -f acm-configs/pam_subscription_local_cluster.yaml
oc create -f acm-configs/workload_subscription_local_cluster.yaml
