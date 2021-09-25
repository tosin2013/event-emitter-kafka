# ACM Configs for Camel-k Integration

## Requirements 
**Confirm target clusters are properly labeled**
> the local-cluster does not need to be checked
*  `clusterid=cluster1`
*  `clusterid=cluster2`
*  `clusterid=cluster3`
*  `clusterid=...`
> The instructions must be followed in order for proper deployment. 

## Quickly configure local-cluster (ACM Hub Cluster)
```
./configure-acm-deployment-local-cluster.sh 
```


## Manual Cluster deployment 
**Clone event-emitter-kafka repo**
```
git clone https://github.com/tosin2013/event-emitter-kafka.git
```

**Login to ACM HUB cluster**
```
oc login --token=sha256~XXXXX--server=https://api.ocp4.example.com:6443
```

**Create namespace for rhpam-monitoring**
```
oc create -f acm-configs/rhpam_namespace.yaml
```

**Create Channel for AMQ Streams Operator**
```
oc create -f acm-configs/amq_channel.yaml
```

**Create Channel for pam and workload deployment**
```
oc create -f acm-configs/pam_channel.yaml
```

**Create Application for  AMQ Streams Operator**
```
oc create -f acm-configs/amq_application.yaml
```

**Create Application for pam and workload deployment**
```
oc create -f acm-configs/pam_application.yaml
```

### Deploy to Camel-k Integration local-cluster (ACM HUB)
**Deploy Camel-k Integration to local cluster**

**Create Placement rule for AMQ Streams Operator**
```
oc create -f acm-configs/amq_placement_local_cluster.yaml
```

**Create Placement rule for pam and workload deployment**
```
oc create -f acm-configs/rhpam_placement_local_cluster.yaml 
```

**Create subscription rule for AMQ Streams Operator**
```
oc create -f acm-configs/amq_subscription_local_cluster.yaml
```

**Create subscription rule for pam deployment**
```
oc create -f acm-configs/pam_subscription_local_cluster.yaml
```

**Create subscription rule for workload deployment**
```
oc create -f acm-configs/workload_subscription_local_cluster.yaml
```


### Deploy Camel-k Integration  to cluster1 

**Deploy Camel-k Integration to cluster1**

**Create Placement rule for AMQ Streams Operator**
```
oc create -f acm-configs/amq_placement_cluster1.yaml
```

**Create Placement rule for pam and workload deployment**
```
oc create -f acm-configs/rhpam_placement_cluster1.yaml 
```

**Create subscription rule for AMQ Streams Operator**
```
oc create -f acm-configs/amq_subscription_cluster1.yaml
```

**Create subscription rule for pam deployment**
```
oc create -f acm-configs/pam_subscription_cluster1.yaml
```

**Create subscription rule for workload deployment**
```
oc create -f acm-configs/workload_subscription_cluster1.yaml
```