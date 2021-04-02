kubectl --kubeconfig=kubeconfig.yaml apply -f namespace.yaml
kubectl --kubeconfig=kubeconfig.yaml -n testing apply -f pvc.yaml
kubectl --kubeconfig=kubeconfig.yaml -n testing apply -f pod.yaml
kubectl --kubeconfig=kubeconfig.yaml -n testing get all
