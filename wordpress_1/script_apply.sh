kubectl apply -f namespace.yaml
kubectl -n testing apply -f nodeport.yaml
kubectl -n testing apply -f replicationcontroller.yaml
