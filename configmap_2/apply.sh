kubectl apply -f namespace.yaml
kubectl -n testing create cm nginx-cm --from-file=nginx-custom-config.conf
kubectl -n testing apply -f nginx-pod.yaml
