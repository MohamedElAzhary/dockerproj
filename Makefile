setup:
	mkdir .dockerproj
	python3 -m venv .dockerproj
	
install:
	pip install --upgrade pip="21.1.1" && \
	sudo wget -O /bin/hadolint https://github.com/hadolint/hadolint/releases/download/v1.16.3/hadolint-Linux-x86_64 && \
	sudo chmod +x /bin/hadolint && \
	pip install -r requirements.txt
	

test:
	#python -m pytest -vv --cov=myrepolib tests/*.py
	#python -m pytest --nbval notebook.ipynb

validate-circleci:
	circleci/circleci config process .circleci/config.yml

run-circleci-local:
	circleci/circleci local execute


lint:
	hadolint Dockerfile 
	pylint --disable=R,C,W1203 app.py

all: install lint test