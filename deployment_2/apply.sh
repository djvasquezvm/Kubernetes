kubectl --kubeconfig=kubeconfig.yaml apply -f namespace.yaml
kubectl --kubeconfig=kubeconfig.yaml -n testing apply -f loadbalancer.yaml
kubectl --kubeconfig=kubeconfig.yaml -n testing apply -f deployment.yaml
echo "esperando que el ultimo pod este corriendo"
while true; do
	if [[ $(kubectl --kubeconfig=kubeconfig.yaml -n testing get pods | tail -n 1 | awk  '{print $3}') == "Running" ]]; then 
		break 
	fi
done
echo "--------------"
echo "mirando variables de entorno desde un pod: "
kubectl --kubeconfig=kubeconfig.yaml -n testing exec -it $(kubectl --kubeconfig=kubeconfig.yaml -n testing get pods | tail -n 1 | awk  '{print $1}') -- env | grep MYSQL
kubectl --kubeconfig=kubeconfig.yaml describe node $(kubectl --kubeconfig=kubeconfig.yaml -n testing get nodes | tail -n 1 | awk  '{print $1}')
kubectl --kubeconfig=kubeconfig.yaml describe nodes
