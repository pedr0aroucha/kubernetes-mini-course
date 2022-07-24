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

kubectl create -f ./kubeconfig/postgres-sts.json # kubectl delete sts postgres-sts
kubectl get sts
kubectl get pod
kubectl logs postgres-sts-0
kubectl describe sts postgres
kubectl describe pod postgres-sts-0

kubectl create -f ./kubeconfig/postgres-svc.json # kubectl delete svc postgres-svc
kubectl get svc
kubectl get pod
kubectl describe svc postgres

kubectl create -f ./kubeconfig/api-deployment.json # kubectl delete deployment api-heroes
kubectl get deployment
kubectl get pod
kubectl describe deployment api-heroes
kubectl describe pod api-heroes-8455d6fc9c-b9krk # this pod id is random
kubectl logs api-heroes-8455d6fc9c-b9krk # this pod id is random
kubectl logs -f api-heroes-8455d6fc9c-b9krk # this pod id is random