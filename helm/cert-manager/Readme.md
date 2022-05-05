
To generate DIGITALOCEAN_TOKEN_BASE64 please run this command:

```
DIGITALOCEAN_TOKEN=your_token_here
DIGITALOCEAN_TOKEN_BASE64=$(echo -n "$DIGITALOCEAN_TOKEN" | base64 -w0)
```

In order to allow cert-manager to create DNS records we need to create secret with DO API key, and in order to issue prod grade certificates we need to create ClusterIssuer

```
envsubst < secret-template.yaml > secret.yaml
kubectl apply -f secret.yaml
kubectl apply -f ClusterIssuer.yaml
```
