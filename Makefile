default: build

build:
	docker build -t marceldegraaf/elixir-ci:1.4 .

release: build
	docker push marceldegraaf/elixir-ci:1.4
