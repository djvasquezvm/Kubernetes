kubectl --kubeconfig=kubeconfig.yaml apply -f install-metrics-server.yaml
kubectl --kubeconfig=kubeconfig.yaml apply -f namespace.yaml
kubectl --kubeconfig=kubeconfig.yaml -n testing apply -f loadbalancer.yaml
kubectl --kubeconfig=kubeconfig.yaml -n testing apply -f deployment.yaml
kubectl --kubeconfig=kubeconfig.yaml -n testing apply -f hpa.yaml
kubectl --kubeconfig=kubeconfig.yaml get pods -n kube-system
kubectl --kubeconfig=kubeconfig.yaml -n testing get all
