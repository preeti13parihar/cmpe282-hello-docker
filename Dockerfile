FROM alpine:3.8

RUN apk add --no-cache --virtual .build-deps g++ python3-dev libffi-dev openssl-dev && \
    apk add --no-cache --update python3 && \
    pip3 install --upgrade pip setuptools

COPY . /opt

WORKDIR /opt

RUN pip install -r requirements.txt

CMD ["python3", "app.py"]