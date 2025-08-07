FROM nginx:stable
COPY charts/nginx-demo/templates/configmap.yaml /usr/share/nginx/html/index.html