FROM anasty17/mltb:latest

WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app

COPY requirements.txt .
RUN chmod 777 ./requirements.txt

RUN --mount=type=secret,id=mysecret pip3 install --no-cache-dir -r requirements.txt


COPY . .

CMD ["bash", "start.sh"]
