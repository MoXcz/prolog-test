FROM ubuntu:latest

RUN apt update && \
    apt install -y swi-prolog && \
    apt clean

WORKDIR /app
COPY par_impar.pl .

CMD ["swipl"]
