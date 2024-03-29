venv:
	python -m venv .venv
r:
	./.venv/bin/pip install -r requirements.txt
prebuild: venv r
	cp .env.example .env
build: prebuild
	echo "build done"
run:
	python main.py

# docker things
build-docker:
	docker-compose build
run-docker:
	docker-compose up -d
stop-docker:
	docker-compose stop
down-docker:
	docker-compose down --rmi all