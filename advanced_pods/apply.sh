kubectl --kubeconfig=kubeconfig.yaml apply -f namespace.yaml
kubectl --kubeconfig=kubeconfig.yaml -n testing apply -f init_container.yaml
kubectl --kubeconfig=kubeconfig.yaml -n testing apply -f cronjob.yaml
kubectl --kubeconfig=kubeconfig.yaml -n testing apply -f job_completions.yaml
kubectl --kubeconfig=kubeconfig.yaml -n testing apply -f nginx_non_root.yaml
kubectl --kubeconfig=kubeconfig.yaml -n testing apply -f simplejob.yaml
kubectl --kubeconfig=kubeconfig.yaml -n testing apply -f wp_mysql_resources.yaml
