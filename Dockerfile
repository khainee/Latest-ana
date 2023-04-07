FROM anasty17/mltb:latest

WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app

RUN --mount=type=secret,id=mysecret \
    pip3 install --no-cache-dir -r /run/secrets/mysecret
COPY . .

CMD ["bash", "start.sh"]
