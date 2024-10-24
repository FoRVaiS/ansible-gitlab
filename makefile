.PHONY: init setup backup restore reconfigure pip-install
MAKEFLAGS += --no-print-directory

# Setup system for development
init: pip-install

# GitLab
#  NOTE: Might be removed later on. Make does not offer a way to input arguments cleanly.
setup:
	./setup.sh

backup:
	./backup.sh

restore:
	./restore.sh

reconfigure:
	./reconfigure.sh

# Pip
pip-install:
	pip install -r requirements.txt
