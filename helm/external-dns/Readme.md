
To generate DIGITALOCEAN_TOKEN_BASE64 please run this command:
```
DIGITALOCEAN_TOKEN=your_token_here
DIGITALOCEAN_TOKEN_BASE64=$(echo -n "$DIGITALOCEAN_TOKEN" | base64 -w0)
```

In order to install the external DNS you need to run following commands

```
helm repo add bitnami https://charts.bitnami.com/bitnami
helm repo update
helm install external-dns bitnami/external-dns --namespace external-dns --create-namespace -f values.yaml
envsubst < secret-template.yaml > secret.yaml
kubectl apply -f secret.yaml
```
