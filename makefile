ONY: test deps

deps:
		pip install -r requirements.txt;\
		pip install -r test_requirements.txt

linkt:
		flake8 hello_world test

test:
		PYTHONPATH=. py.test --verbose -s

docker_build:
		docker build -t hello_world-printer .


docker_run: docker_build
			docker run \
			   --name hello-wold-printer-dev \
			   -p 5000:5000 \
			   -d hello-wold-printer

USERNAME=kriskom
DOCKER_PASSWORD=Zajecia1
TAG=$(USERNAME)/hello-wold-printer

docker_push:
	@docker login --username $(USERNAME) --password $(PASSWORD)  ; \
	docker tag hello-wold-printer $(TAG); \
	docker push $(TAG); \
	docker logout;
