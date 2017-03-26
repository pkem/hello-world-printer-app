.PHONY: test

deps:
	pip install -r requirements.txt; \
	pip install -r test_requirements.txt

lint:
	flake8 hello_world test

test:
	PYTHONPATH=. py.test  --verbose -s

run:
	PATHONPATH=. py.main

docker_build:
	docker build -t hello-world-printer .

USERNAME=pawkem
TAG=$(pawkem) /hello-world-printer
docker_push:
	docker login --username $ (pawkem) --password $ (pawelek86)  ; \
	docker tag hello-world-printer $ (TAG); \
	docker push $ (TAG); \
	docker logout;

