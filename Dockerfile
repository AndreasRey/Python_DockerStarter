FROM alpine:latest as base

RUN apk add --no-cache python3 python3-dev py-pip build-base

RUN mkdir /app/

COPY /app/REQUIREMENTS.txt  /app/

RUN pip3 install -r /app/REQUIREMENTS.txt

# Keeps the container running
CMD ["tail", "-f", "/dev/null"]