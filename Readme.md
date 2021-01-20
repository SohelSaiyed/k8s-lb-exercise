#Kubernetes load balancer exercise

* Docker image: build simple myapp application, which print the host name on which its running. Navigate to `/app/` and follow instruction to build image. 

###To run complete example exercise. 
###Prerequisites
* install docker 
* kubernetes 1.13.2
* install helm v3 
* terraform v0.12
* running docker-desktop cluster

1. navigate to `k8s-lb-exercise/terraform/` and follow the Readme instruction. 
2. To test the load balancer, run `test_load_balancing.sh` scrip from terminal and check the hostname. 