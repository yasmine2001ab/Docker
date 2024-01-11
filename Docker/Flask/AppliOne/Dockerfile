FROM python:3.7-alpine

MAINTAINER yasmine

RUN apk add --no-cache gcc musl-dev linux-headers

WORKDIR /code

ENV APP_ENVIRONMENT=Dev
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY boot.sh . 

COPY . .

CMD ["sh", "boot.sh"]
EXPOSE 5000
