FROM python:3.7-alpine

ENV PYTHONDONTWRITEBYTECODE 1

RUN python -m pip install -U pdm

WORKDIR /src

ONBUILD COPY pyproject.toml pyproject.toml
ONBUILD COPY pdm.lock pdm.lock

ONBUILD RUN pdm export --production -f requirements -o requirements.txt --without-hashes
