up:
	docker-compose up -d

down:
	docker-compose down

restart:
	docker-compose restart

bash:
	docker-compose exec node bash

install-client:
	docker-compose run node cd client && npm install

install-server:
	docker-compose run node cd server && npm install

install-webview:
	docker-compose run node cd webview && npm install
