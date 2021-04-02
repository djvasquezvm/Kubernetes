kubectl --kubeconfig=kubeconfig.yaml apply -f namespace.yaml
kubectl --kubeconfig=kubeconfig.yaml -n testing apply -f rolling.yaml
#kubectl --kubeconfig=kubeconfig.yaml -n testing rollout history deployment rolling-nginx
#kubectl --kubeconfig=kubeconfig.yaml -n testing rollout undo deployment rolling-nginx --to-revision=1
