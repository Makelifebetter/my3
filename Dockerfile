FROM python:3.7

ENV PYTHONUNBUFFERED 1

RUN mkdir -p /home/www/mysite3

WORKDIR /home/www/mysite3

ADD .  /HOME/WWW/mysite3

RUN pip install -r requirements.txt

RUN sed -i 's/\r//' ./start.sh

RUN chmod +x ./start.sh