#!/bin/bash
set -e
python3 -m venv --upgrade-deps .venv
. .venv/bin/activate
pip install --index-url 'https://:2024-12-21T18:30:19.133079Z@time-machines-pypi.sealsecurity.io/' -r requirements/dev.txt
pip install --index-url 'https://:2024-12-21T18:30:19.133079Z@time-machines-pypi.sealsecurity.io/' -e .
pre-commit install --install-hooks
