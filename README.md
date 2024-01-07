# This module creates private GKE cluster with custom VPC and CIDR ranges
# This module with comes with argo-cd installation

# Release 1.0.0
Description added with the initial requirements for CD infrastructure creation

```
project_id = ""
name = "retail-demo-app"
region = "us-central1"
node_machine_type = "e2-standard-4"
node_count = 2
vpc_primary_cidr = "10.0.0.0/18"
k8s_pods_secondary_cidr = "10.48.0.0/14"
k8s_service_secondary_cidr ="10.52.0.0/20"
```

# Release 1.0.4

Description master authorized network to 0.0.0.0/0