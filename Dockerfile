FROM anasty17/mltb:latest

WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app

COPY requirements.txt .
COPY build-script.sh .
RUN --mount=type=secret,id=mysecret ./requirements.txt

RUN pip3 install --no-cache-dir -r /run/secrets/mysecret

COPY . .

CMD ["bash", "start.sh"]
