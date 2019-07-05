# Install the cert-manager CRDs. We must do this before installing the Helm
# chart in the next step for `release-0.8` of cert-manager:
kubectl apply -f https://raw.githubusercontent.com/jetstack/cert-manager/release-0.8/deploy/manifests/00-crds.yaml

# Create the namespace for cert-manager
kubectl create namespace cert-manager

# Label the cert-manager namespace to disable resource validation
kubectl label namespace cert-manager certmanager.k8s.io/disable-validation=true

## Add the Jetstack Helm repository
helm repo add jetstack https://charts.jetstack.io

## Updating the repo just incase it already existed
helm repo update

## Install the cert-manager helm chart
helm install \
  --name cert-manager \
  --namespace cert-manager \
  --version v0.8.1 \
  jetstack/cert-manager

kubectl apply -f staging-issuer.yaml
kubectl apply -f production-issuer.yaml

