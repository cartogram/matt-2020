# Matt K8s

## Deployment

From within the [Cloud Shell](https://console.cloud.google.com/) root, `cd` into the main application folder and pull the newest code via `git pull`.

Build a new docker image and push it to Google Cloud Registry.

```
docker build -t gcr.io/cartogram/app:v1 .
docker push gcr.io/cartogram/app:v1
```

Create the new deployment.

```
kubectl apply -f deployment.yaml --record
```

Inspect the deployment, pods or services

```
kubectl get deployments
kubectl get pods
kubectl get services
```

View the IP that is exposed under `External-Ip` and open that in a browser.