FROM python:3.7-alpine
COPY /app /app
WORKDIR /app

RUN apt-get clean && apt-get -y update

RUN apt-get -y install nginx \
&& apt-get -y install python3-dev \
&& apt-get -y install build-essential

RUN pip install -r /app/requirements.txt --src /usr/local/src

COPY nginx.conf /etc/nginx

RUN chmod +x ./start.sh

CMD ["./start.sh"]
