FROM tiangolo/uvicorn-gunicorn:python3.7

RUN pip install pip-tools

RUN pip-compile requirements.in > requirements.txt && pip-sync

COPY ./app /app