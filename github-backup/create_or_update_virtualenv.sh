#!/bin/sh
#
# Author:  Enrico Tröger
# License: GPLv2
#
# initial setup of the Python virtualenv for github-backup (github.com/josegonzalez/python-github-backup)
# or just update it if it already exists

BASE_DIR="/home/geany/github-backup"
mkdir -p "${BASE_DIR}"
cd "${BASE_DIR}"
if [ ! -d "${BASE_DIR}/venv" ]; then
	python3 -m venv venv
fi

# update
venv/bin/pip install -U pip setuptools
venv/bin/pip install -U github-backup
