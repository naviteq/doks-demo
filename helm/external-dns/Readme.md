### In order to install the external DNS you need to run following commands

```
helm repo add bitnami https://charts.bitnami.com/bitnami
helm repo update
helm install external-dns bitnami/external-dns --namespace external-dns --create-namespace -f values.yaml
```
