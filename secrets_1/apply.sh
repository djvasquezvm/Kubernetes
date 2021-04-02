kubectl apply -f namespace.yaml
kubectl -n testing create secret generic my-secret --from-file=ssh-privatekey=/home/daniel/.ssh/id_rsa.pub --from-literal=passphrase=password
rm -f secret.yaml
echo "apiVersion: v1" >> secret.yaml
echo "data:" >> secret.yaml
echo -n "  user: " >> secret.yaml
echo "lisa" | base64 >> secret.yaml
echo -n "  password: " >> secret.yaml
echo "password" | base64 >> secret.yaml
echo "kind: Secret" >> secret.yaml
echo "metadata:" >> secret.yaml
echo "  name: my-secret2" >> secret.yaml
kubectl -n testing apply -f secret.yaml
kubectl -n testing get secrets
