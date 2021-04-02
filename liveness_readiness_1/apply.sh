kubectl --kubeconfig=kubeconfig.yaml apply -f namespace.yaml
kubectl --kubeconfig=kubeconfig.yaml -n testing apply -f liveness_exec.yaml
kubectl --kubeconfig=kubeconfig.yaml -n testing apply -f liveness_http.yaml
kubectl --kubeconfig=kubeconfig.yaml -n testing apply -f liveness_tcp.yaml
kubectl --kubeconfig=kubeconfig.yaml -n testing apply -f loadbalancer.yaml
kubectl --kubeconfig=kubeconfig.yaml -n testing apply -f readiness_http_1.yaml
kubectl --kubeconfig=kubeconfig.yaml -n testing apply -f readiness_http_2.yaml
kubectl --kubeconfig=kubeconfig.yaml -n testing get all
