# OrchardCoreStarter example helm chart

Example helm chart for OrchardCoreStarter

## Kubernetes secrets

These secrets need to be **manually** created in the cluster with values randomly set (do not use the defaults).
To create a secret, you need to be able to connect to the k8s cluster via `kubectl`.

This [guide](https://kubernetes.io/docs/concepts/configuration/secret/#creating-your-own-secrets) is a good reference.

### Commands to create secrets

1 - modify the values in the yaml files using `base64` encoding.

```bash
#bash
echo -n 'SuperSecretPassword' | base64
U3VwZXJTZWNyZXRQYXNzd29yZA==
```

```yaml
#yaml
apiVersion: v1
kind: Secret
metadata:
  name: db-production
type: Opaque
data:
  postgres-password: U3VwZXJTZWNyZXRQYXNzd29yZA==
```

#### Production

```bash
#bash
kubectl create -f secrets/db-production.yaml
```
