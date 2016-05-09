# Script to run and stop Kubernetes on Docker Host with Vagrant 
The scripts follow the instruction how to run Kubernetes locally via Docker at [Kubernetes] (http://kubernetes.io/docs/getting-started-guides/docker/)
- You must have a Linux Host with Docker.

## Create folder 
Create folder (for example)
```
mkdir startstop
cd startstop
```
## Run Kubernetes
Download script [installkube8s.sh]
```
wget https://github.com/keypartner/kubernetes/blob/master/startstop/installkube8s.sh
```
and launch 
```
. installkube8s.sh
```

## Verify Kubernetes 
Launch the following commands:
```
kubectl get pods
```
and waits the following results
```
NAME                   READY     STATUS    RESTARTS   AGE
k8s-etcd-127.0.0.1     1/1       Running   0          43s
k8s-master-127.0.0.1   4/4       Running   4          1m
k8s-proxy-127.0.0.1    1/1       Running   0          50s
```
and enjoys with *kubectl*

## Stop Kubernetes
Download script [stopkube8s.sh]
```
wget https://github.com/keypartner/kubernetes/blob/master/startstop/stopkube8s.sh
```
and launch
```
./stopkube8s.sh
```
ATTENTION: Note this removes all containers running under Docker, so use with caution.

Verify that all containers are stopped by 
```
docker ps 
```
if there are still container running, then log back stopkube8s.sh
