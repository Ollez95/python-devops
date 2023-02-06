install:
	# install commands
	pip install --upgrade pip &&\
		pip install -r requirements.txt
format:
	# format code
	black \
		src/*.py \
		src/fast_api/*.py
lint:
	# flake8 or #pylint
	pylint --disable=R,C src/*.py src/fast_api/*.py
test:
	# test
deploy:
	# deploy

all: install lint test deploy
	