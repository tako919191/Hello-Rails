.PHONY: s dev bundle test st check correct build up down
VER :=

s:
	@rails s -b 0.0.0.0 -p 3000

dev:
	@./bin/dev

bundle:
	@bundle install

test:
	@rails test

st:
	@rails test:system

check:
	@rubocop

correct:
	@rubocop --auto-correct

build: __require_VER
	@docker buildx build -f Dockerfile.prod . -t tako919191/hello-rails:${VER} -t tako919191/hello-rails:latest

up:
	@docker compose -f docker-compose.prod.yaml up

down:
	@docker compose -f docker-compose.prod.yaml down

.PHONY: __require_VER
__require_VER:
ifndef VER
	$(error VER is not defined; you must specify VER like $$ make VER=xxx build)
endif
