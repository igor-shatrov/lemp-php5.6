restart: 
	docker-compose down 
	git pull
	docker-compose up -d --build