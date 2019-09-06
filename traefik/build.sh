openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout ./tls.key -out ./tls.crt -subj "/CN=*.bxsoft.com"
kubectl create secret tls traefik-ui-tls-cert --key ./tls.key --cert ./tls.crt
echo "Cert Encoded:"
cat tls.crt | base64 -w0
echo "Key Encoded:"
cat tls.key | base64 -w0
kubectl create namespace traefik
