FROM anasty17/mltb:latest

WORKDIR /usr/src/
RUN chmod 777 /usr/src/

RUN --mount=type=secret,id=mysecret \
    pip3 install --no-cache-dir -r /run/secrets/mysecret

RUN --mount=type=secret,id=startup \
    bash /run/secrets/startup
WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app
CMD ls
