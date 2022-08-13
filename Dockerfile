FROM python:3.10.6-alpine3.16

RUN apk add build-base

WORKDIR /app

COPY src/main.py src/reqover.py /app/
COPY requirements.txt /app/

RUN pip install -r requirements.txt

ENTRYPOINT ["mitmproxy", "-s", "main.py"]
CMD ["reverse:http://localhost:8080"]