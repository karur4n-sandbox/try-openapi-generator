generate:
	rm -rf output && mkdir output && touch output/.gitkeep
	docker run --rm -v "${PWD}:/local" openapitools/openapi-generator-cli generate \
		-i /local/reference/おみくじ.v1.yaml \
		-g nodejs-express-server \
		-o /local/output