##########
# Docker #
##########

.PHONY: docker-up
docker-up:
	docker-compose up -d

.PHONY: docker-down
docker-down:
	docker-compose down

.PHONY: docker-restart
docker-restart:
	docker-compose restart

.PHONY: docker-node
docker-node:
	docker-compose exec node bash

##########
# Client #
##########

.PHONY: client-install
client-install:
	docker-compose run --rm -w /skeleton/client node npm install

##########
# Server #
##########

.PHONY: server-install
server-install:
	docker-compose run --rm -w /skeleton/server node npm install

.PHONY: server-up
server-up:
	docker-compose run --rm -p 1002:3000 -w /skeleton/server node node index.js

###########
# Webview #
###########

.PHONY: webview-install
webview-install:
	docker-compose run --rm -w /skeleton/webview node npm install

.PHONY: webview-up
webview-up:
	docker-compose run --rm -p 1003:8080 -w /skeleton/webview node npm run serve

.PHONY: webview-build
webview-build:
	docker-compose run --rm -w /skeleton/webview node npm run build

.PHONY: webview-watch
webview-watch:
	docker-compose run --rm -w /skeleton/webview node npm run watch
