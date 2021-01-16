# Flask App to K8s and AWS Project #4
FROM python:stretch

COPY . /app
WORKDIR /app

RUN pip install -r requirements.txt

ENTRYPOINT [ "gunicorn", "-b", ":8080", "main:APP" ]
