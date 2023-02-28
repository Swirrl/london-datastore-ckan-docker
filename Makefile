.PHONY: run-local stop-local build-image

run-local:
	docker compose -f docker-compose.dev.yml up -d

stop-local:
	docker compose -f docker-compose.dev.yml down

build-image:
	./build-image.sh

push-image:
	@echo "Pushing image to ECR"
