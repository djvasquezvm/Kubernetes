kubectl --kubeconfig=kubeconfig.yaml apply -f namespace.yaml
kubectl --kubeconfig=kubeconfig.yaml -n testing apply -f loadbalancer.yaml
kubectl --kubeconfig=kubeconfig.yaml -n testing apply -f deployment.yaml
#kubectl --kubeconfig=kubeconfig.yaml -n testing apply -f deployment_new.yaml
kubectl --kubeconfig=kubeconfig.yaml -n testing get all
