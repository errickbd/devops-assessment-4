	
	![Diagram](https://github.com/errickbd/devops-assessment-4/blob/e702f7c76422751cb3684e4f05032daed750ace8/images/devops-4-diagram.png)



	- Create dockerfiles for app and db

	- Create .env file

	- Create docker compose file

	- Run docker compose
		○ `docker-compose build --no-cache`

	- Push Docker images to Docker hub repo
		○ `docker push`

	- Create all files

		○ Create db deployment file
	
		○ Create db service file
	
		○ Create secrets.yml file
	
		○ Create app deployment file
	
		○ Create app service file
	
		○ Create configmap.yml file
	
		○ Create namespace.yml file
	
		○ Create resource-quota.yml file

	- Add namespace metadata to all files

	- 'minikube start'

	- Build namespace
		○ 'kubectl apply -f k8s/namespace.yml' 

	- Build all resources
		○ 'kubectl apply -f k8s/.'

	- Check all resources were built within the namespace and pods are ready
		○ 'kubectl get all -n <namespace>'

	- To access the app if running on minikube. You have to create a local tunnel
		○ 'minikube service twoge-app-service -n <namespace>'
		○ Paste URL onto the browser

	
	
	![Diagram](https://github.com/errickbd/devops-assessment-4/blob/main/images/Minikube%20Deployment%2001.png)

	
	![Home Page](https://github.com/errickbd/devops-assessment-4/blob/main/images/Minikube%20Deployment%2002.png)	
	
	
	![Posts Page](https://github.com/errickbd/devops-assessment-4/blob/main/images/Minikube%20Deployment%2003.png)



	- Create storage class file

	- Create PVC file

	- Add volumes configuration to Database deployment file


To deploy to eks:
	- Set which profile to target on aws cli
		○ 'export AWS_PROFILE=cpbravo-errick'


	- Configure local kubernetes to talk to eks
		○ 'aws eks --region us-east-1 update-kubeconfig --name class-eks-cluster'

	- Verify current context in k8s configuration
		○ 'kubectl config current-context'

	- Set current default namespace
		○ 'kubectl config set-context --current --namespace=errick'

	- Displays config details
		○ 'kubectl config view --minify'
		
	- Run all files
		○ 'kubectl apply -f . --namespace=errick'


	- Check on browser through localhost
		○ Localhost: 'kubectl port-forward svc/twoge-app-service 8080:80 -n errick'
		○ Loadbalancer: 'kubectl get svc -n errick'
		
Check if volume persistence works by deleting pod, and seeing if the data is there on the new pod
