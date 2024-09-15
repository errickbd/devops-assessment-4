<img width="1249" alt="Screenshot 2024-07-16 at 9 43 12 AM" src="https://github.com/errickbd/devops-assessment-4/blob/e702f7c76422751cb3684e4f05032daed750ace8/images/devops-4-diagram.png">	




1. Create dockerfiles for app and db


2. Create .env file


3. Create docker compose file


4. Run docker compose
	- `docker-compose build --no-cache`


5. Push Docker images to Docker hub repo
	- `docker push`


6. Create all files

	- Create db deployment file
	
	- Create db service file
	
	- Create secrets.yml file
	
	- Create app deployment file
	
	- Create app service file
	
	- Create configmap.yml file
	
	- Create namespace.yml file
	
	- Create resource-quota.yml file

7. Add namespace metadata to all files


8. `minikube start`


9. Build namespace
	- `kubectl apply -f k8s/namespace.yml`


10. Build all resources
	- `kubectl apply -f k8s/.`


11. Check all resources were built within the namespace and pods are ready
	- `kubectl get all -n <namespace>`


12. To access the app if running on minikube. You have to create a local tunnel
	- `minikube service twoge-app-service -n <namespace>`
	- Paste URL onto the browser



<img width="1249" alt="Screenshot 2024-07-16 at 9 43 12 AM" src="https://github.com/errickbd/devops-assessment-4/blob/main/images/Minikube%20Deployment%2001.png">



<img width="1249" alt="Screenshot 2024-07-16 at 9 43 12 AM" src="https://github.com/errickbd/devops-assessment-4/blob/main/images/Minikube%20Deployment%2002.png">	


	
<img width="1249" alt="Screenshot 2024-07-16 at 9 43 12 AM" src="https://github.com/errickbd/devops-assessment-4/blob/main/images/Minikube%20Deployment%2003.png">	




13. Create storage class file


14. Create PVC file


15. Add volumes configuration to Database deployment file


To deploy to eks:


16. Set which profile to target on aws cli
	- `export AWS_PROFILE=cpbravo-errick`


17. Configure local kubernetes to talk to eks
	- `aws eks --region us-east-1 update-kubeconfig --name class-eks-cluster`

18. Verify current context in k8s configuration
	- `kubectl config current-context`

19. Set current default namespace
	- `kubectl config set-context --current --namespace=errick`

20. Displays config details
	- `kubectl config view --minify`
		
21. Run all files
	- `kubectl apply -f . --namespace=errick`


22.Check on browser through localhost
	- Localhost: 'kubectl port-forward svc/twoge-app-service 8080:80 -n errick'
	- Loadbalancer: 'kubectl get svc -n errick'



Check if volume persistence works by deleting pod, and seeing if the data is there on the new pod
