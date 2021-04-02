kubectl --kubeconfig=kubeconfig.yaml apply -f namespace.yaml
kubectl --kubeconfig=kubeconfig.yaml -n testing apply -f deploy.yaml
kubectl --kubeconfig=kubeconfig.yaml -n testing expose deployment nginx --port=80 --type=NodePort
kubectl --kubeconfig=kubeconfig.yaml -n testing apply -f service.yaml
