helm install nginx-ingress stable/nginx-ingress --set controller.publishService.enabled=true
kubectl apply -f namespace.yaml
kubectl -n testing apply -f hello-kubernetes-first.yaml
kubectl -n testing apply -f hello-kubernetes-second.yaml
kubectl -n testing apply -f hello-kubernetes-ingress.yaml
#echo "167.172.3.17 ingress1.example.com" >> /etc/hosts
#echo "167.172.3.17 ingress2.example.com" >> /etc/hosts
curl ingress1.example.com
curl ingress2.example.com
