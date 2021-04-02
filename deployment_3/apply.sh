kubectl --kubeconfig=kubeconfig.yaml apply -f namespace.yaml
kubectl --kubeconfig=kubeconfig.yaml -n testing  create deployment nginx --image=nginx --replicas=3

