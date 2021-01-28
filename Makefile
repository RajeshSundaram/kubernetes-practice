IMAGE_NAME := machine-ip-finder:latest

build:
	docker build -t ${IMAGE_NAME} -f App.Dockerfile application
run:
	docker run -it --env PORT=80 -p 8080:80 ${IMAGE_NAME}

build-kube:
	eval $(minikube -p minikube docker-env) && \
	docker build -t ${IMAGE_NAME} -f App.Dockerfile application && \
	kubectl apply -f specs/app.deployment.yaml