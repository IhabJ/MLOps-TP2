# Dockerfile to build a flask app

FROM python:3.10

WORKDIR /usr/app

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY . .

CMD ["python", "app.py"]

CMD ["python", "-m unittest"]


