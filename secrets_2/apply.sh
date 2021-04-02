kubectl apply -f namespace.yaml
kubectl -n testing create secret generic secretstuff --from-literal=user=linda --from-literal=password=password
kubectl -n testing get secrets
kubectl -n testing apply -f pod-secret.yaml
kubectl -n testing create secret generic mysql --from-literal=password=root
kubectl -n testing apply -f pod-secret-as-var.yaml
