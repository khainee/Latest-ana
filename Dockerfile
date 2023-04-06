FROM anasty17/mltb:latest

WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app

COPY requirements.txt .
RUN chmod 777 ./requirements.txt

RUN --mount=type=secret,id=mysecret
RUN pip3 install /run/secrets/mysecret

COPY . .

CMD ["bash", "start.sh"]
