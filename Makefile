##########
# Docker #
##########

.PHONY: d-up
d-up:
	docker-compose up -d

.PHONY: d-down
d-down:
	docker-compose down

.PHONY: d-restart
d-restart:
	docker-compose restart

.PHONY: d-node
d-node:
	docker-compose exec node bash

##########
# Client #
##########

.PHONY: c-install
c-install:
	docker-compose run --rm -w /skeleton/client node npm install

##########
# Server #
##########

.PHONY: s-install
s-install:
	docker-compose run --rm -w /skeleton/server node npm install

.PHONY: s-up
s-up:
	docker-compose run --rm -p 1002:3000 -w /skeleton/server node node index.js

###########
# Webview #
###########

.PHONY: w-install
w-install:
	docker-compose run --rm -w /skeleton/webview node npm install

.PHONY: w-up
w-up:
	docker-compose run --rm -p 1003:8080 -w /skeleton/webview node npm run serve

.PHONY: w-build
w-build:
	docker-compose run --rm -w /skeleton/webview node npm run build

.PHONY: w-watch
w-watch:
	docker-compose run --rm -w /skeleton/webview node npm run watch
