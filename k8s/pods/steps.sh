#check cluster info
kubectl cluster-info

#check cluster nodes
kubectl get nodes

#check running pods
kubectl get pods

#creating first pod
kubectl run first-pod --image=nginx

#check where the pod is schedule
kubectl get pods -o wide

#get more info about the pod
kubectl describe pods first-pod

#create a namespace
k create namespace app

#get pods from namespace
k get pods -n app
k get pods -n default

k exec -it first-pod -- /bin/bash

k port-forward first-pod 8080:80

#run your first controller
k create deployment app-deloy --image=nginx

k get deployments

k get replicasets

k scale deployment app-deploy --replicas=3

#explain how to deploy using yaml files

#volumes in pods
k apply -f pod-volume.yaml

#volumes with multicontainer
kubectl exec -it hello-world-pod -c main-container -- sh
kubectl logs -f hello-world-pod -c sidecar-container
