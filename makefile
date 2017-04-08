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
