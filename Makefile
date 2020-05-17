SHELL := /bin/bash

setup: env-setup

remove: env-remove

precommit: black

env-setup:
	conda env update -f environment.yml
	source activate goodtunes && python -m ipykernel install --user --name goodtunes

env-remove:
	conda env remove -n goodtunes -y

black:
	black --target-version py37 .