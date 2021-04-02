kubectl --kubeconfig=kubeconfig.yaml apply -f namespace.yaml
kubectl --kubeconfig=kubeconfig.yaml -n testing apply -f basic_networking_pods.yaml
kubectl --kubeconfig=kubeconfig.yaml -n testing apply -f create_simple_pod_busybox.yaml
kubectl --kubeconfig=kubeconfig.yaml -n testing apply -f sidecar.yaml
