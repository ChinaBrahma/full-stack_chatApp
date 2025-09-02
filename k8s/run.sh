kubectl apply -f mongodb_pv.yml
kubectl get pv -n chatapp
kubectl apply -f mongodb_pvc.yml

# for checking
kubectl get pods -n chat-app 
kubectl get deployment -n chat-app

#To view running a service
kubectl get svc -n chat-app    

# To delete a service
kubectl delete svc myapp -n chat-app


kubectl apply -f mongodb.yml
kubectl apply -f frontend.yml
kubectl apply -f backend.yml

 
# Generate Scerets kubernetes expects secretes in base64
echo -n "mai_harne_dunga" | base64

# If we add rule chat-app.com map to host ip, we can access the frontend with chat-app.com like normal website.
chinab ~/Developer/devOps/full-stack_chatApp/k8s % cat /etc/hosts       
##
# Host Database
#
# localhost is used to configure the loopback interface
# when the system is booting.  Do not change this entry.
##
127.0.0.1       chat-app.com
127.0.0.1       localhost
255.255.255.255 broadcasthost
::1             localhost

# Using ingress
1. minikube addons enable ingress
2. sudo -E kubectl port-forward svc/ingress-nginx-controller -n ingress-nginx 80:80





