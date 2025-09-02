step 0: create namespace
    kubectl apply -f namespace.yml
step 0.5:
    kubectl apply -f secrets.yml
step 1:
    kubectl apply -f mongodb_pv.yml
step 2:
    kubectl apply -f mongodb_pvc.yml
step 3:
    kubectl apply -f mongodb.yml
step 3.5:
    kubectl apply -f mongodb-service.yml
step 4:
    kubectl apply -f backend.yml
step 4.5:
    kubectl apply -f backend-service.yml
step 5:
    kubectl apply -f frontend.yml
step 5.5:
    kubectl apply -f frontend-service.yml
step 6: (Only if we want to access our application via ingress)
    kubectl ingress.yml


Actions Taken:
    services are not accessible outside minikube, we have to do port-forward service ports to host port.
    e.g.: kubectl port-forward svc/ingress-nginx-controller -n ingress-nginx 80:80

ingress working fine but unable to map resources, it get "/" path but fails in backend "/api" call.


