.PHONY: docker-exec docker-up docker-down

docker-pull-ollama-llama2:
	docker-compose exec ollama ollama pull llama2

docker-pull-ollama-mistral:
	docker-compose exec ollama ollama pull mistral

docker-exec:
	docker exec -ti terraform-container bash

docker-up:
	docker-compose up -d

docker-down:
	docker-compose down

launch: docker-up docker-pull-ollama-llama2 docker-pull-ollama-mistral
