kubectl apply -f namespace.yaml
kubectl -n testing create cm variables --from-file=variables
kubectl -n testing apply -f cm-test-pod.yaml
kubectl -n testing logs test1
kubectl -n testing create cm morevars --from-literal=VAR3=red --from-literal=VAR4=blue
kubectl -n testing get cm
