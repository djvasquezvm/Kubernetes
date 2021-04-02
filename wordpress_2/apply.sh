kubectl --kubeconfig=kubeconfig.yaml apply -f namespace.yaml
kubectl --kubeconfig=kubeconfig.yaml -n testing apply -f replicationcontroller.yaml
kubectl --kubeconfig=kubeconfig.yaml -n testing apply -f loadbalancer.yaml
 
