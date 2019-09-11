build: ## Build everything
	export USER_NAME=makalexs
	cd ui && docker build -t $(USER_NAME)/ui . && cd ..
	cd comment && docker build -t $(USER_NAME)/comment . && cd ..
	cd post && docker build -t $(USER_NAME)/post . && cd ..
	cd ../monitoring/prometheus && docker build -t $(USER_NAME)/prometheus . && cd ..
	cd ./alertmanager && docker build -t $(USER_NAME)/alertmanager . && cd ..
	docker push $(USER_NAME)/ui
	docker push $(USER_NAME)/comment
	docker push $(USER_NAME)/post
	docker push $(USER_NAME)/prometheus
	docker push $(USER_NAME)/alertmanager

run: ## Run everything
	docker-compose down --remove-orphans
	docker-compose -f docker-compose-monitoring.yml down --remove-orphans
	docker-compose up -d --remove-orphans
	docker-compose -f docker-compose-monitoring.yml up -d --remove-orphans
