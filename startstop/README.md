# Script to run and stop Kubernetes on Docker Host with Vagrant 
The scripts follow the instruction how to run Kubernetes locally via Docker at [here] (http://kubernetes.io/docs/getting-started-guides/docker/)
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
# Stop Kubernetes
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
