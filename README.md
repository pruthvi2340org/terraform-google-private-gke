# This module creates private GKE cluster with custom VPC and CIDR ranges
# This module with comes with argo-cd installation

## Below applies if you are using terraform
```
mkdir values && touch values/argocd.yaml
cat <<EOF > values/argocd.yaml
---
global:
  image:
    tag: "v2.3.0"

server:
  extraArgs:
    - --insecure
EOF
```
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

## Below for Terragrunt users 
# write this into terragrunt.hcl file
```
terraform {
  source  = "tfr:///Pruthvi2340/private-gke/google?version=1.0.14"
}

inputs = {
  project_id = ""
  name = "retail-demo-app"
  region = "us-central1"
  node_machine_type = "e2-standard-4"
  node_count = 2
  vpc_primary_cidr = "10.0.0.0/18"
  k8s_pods_secondary_cidr = "10.48.0.0/14"
  k8s_service_secondary_cidr ="10.52.0.0/20"
}
```


# Release 1.0.0
Description added with the initial requirements for CD infrastructure creation

# Release 1.0.4

Description: master authorized network to 0.0.0.0/0

# Release 1.0.5

Description: added permissions to Kubernetes Service account

# Release 1.0.6

Description: deletion protection set to false

# Release 1.0.7

Description: argocd upgraded to 2.3.0

# Release 1.0.8

Description: static ip for ingress and DNS

# Release 1.0.9

Description: Http load balancing enabled

# Release 1.0.10

Description: Firewall network tags to allow health checks for ingress backend

# Release 1.0.12

Description: minor change in the code

# Release 1.0.13

Description: Added cloud armor for denying 9.9.9.0/24 ip range
