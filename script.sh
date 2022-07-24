# ----
docker-compose up --build -d

# ----
sh ./run.sh

# ----
docker login 

docker build -t app .

docker image ls | grep postgres

docker tag app pedr0aroucha/nodejs-with-postgres-api-example

docker push pedr0aroucha/nodejs-with-postgres-api-example

# ----
minikube start
minikube dashboard

kubectl get nodes
kubectl describe nodes

kubectl create -f ./kubeconfig/postgres-sts.json
kubectl get statefulset
kubectl get pod

kubectl describe sts postgres