#prometheus is not going to work if there is enough ram memory in the cluster
kubectl --kubeconfig=kubeconfig.yaml apply -f install_prometheus_grafana/setup
kubectl --kubeconfig=kubeconfig.yaml apply -f install_prometheus_grafana/
