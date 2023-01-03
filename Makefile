# Build and run this project. 
# Author: Matt Norris <matt@mattnorris.dev>

PYTHON_VENV = .venv
PYTHON_REQUIREMENTS = requirements.txt

default: install

$(PYTHON_VENV): 
	python3 -m venv $(PYTHON_VENV)

$(PYTHON_REQUIREMENTS):
	pip freeze > $(PYTHON_REQUIREMENTS)

# TODO: Check if inside a virtual environment
install:
	pip install -r $(PYTHON_REQUIREMENTS)

.PHONY: install
