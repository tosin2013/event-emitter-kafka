# ACM Configs for Camel-k Integration

## Requirements 
**Confirm target clusters are properly labeled**
> the local-cluster does not need to be checked
*  `clusterid=cluster1`
*  `clusterid=cluster2`
*  `clusterid=cluster3`
*  `clusterid=...`

## Cluster deployment 

**Login to ACM HUB cluster**
```
oc login --token=sha256~XXXXX--server=https://api.ocp4.example.com:6443
```

**Create namespace for dev environment**
```
oc create -f acm/01_namespace.yaml
```

**Create Channel for dev environment**
```
oc create -f acm/02_channel.yaml 
```

**Create Application for dev environment**
```
oc create -f acm/03_application.yaml
```

### Deploy to Camel-k Integration local-cluster (ACM HUB)
**Deploy Camel-k Integration to local cluster**

**Create Placement rule for local cluster**
```
oc create -f acm/04_placement_local_cluster.yaml 
```

**Create subscription rule for local cluster**
```
oc create -f acm/05_subscription_local_cluster.yaml 
```

### Deploy Camel-k Integration  to cluster1 

**Deploy Camel-k Integration to cluster1**

**Create Placement rule for cluster1**
```
oc create -f acm/04_placement_cluster1.yaml
```

**Create subscription rule for cluster1**
```
oc create -f acm/05_subscription_cluster1.yaml
```


