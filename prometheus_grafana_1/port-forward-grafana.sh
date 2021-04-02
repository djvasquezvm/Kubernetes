#name_pod=$(kubectl --kubeconfig=kubeconfig.yaml -n monitoring get pods | grep grafana | awk '{print $1}')
#kubectl --kubeconfig=kubeconfig.yaml -n monitoring port-forward $name_pod 3000:3000
kubectl --kubeconfig=kubeconfig.yaml -n monitoring port-forward svc/grafana 3000
