start:
	minikube start
	docker build -t web-image .
	minikube image load web-image
	kubectl apply -f kuber/redis-deployment.yaml
	kubectl apply -f kuber/redis-service.yaml
	kubectl apply -f kuber/web-deployment.yaml
	kubectl apply -f kuber/web-ingress.yaml
	kubectl apply -f kuber/web-service.yaml

delete:
	kubectl delete -f kuber/redis-deployment.yaml
	kubectl delete -f kuber/redis-service.yaml
	kubectl delete -f kuber/web-deployment.yaml
	kubectl delete -f kuber/web-ingress.yaml
	kubectl delete -f kuber/web-service.yaml
	minikube stop
	minikube delete