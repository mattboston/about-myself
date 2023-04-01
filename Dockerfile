FROM python:3-alpine

ENV version=v1.0.6
ENV PYTHONPATH=/app

WORKDIR /app

RUN python3 -m ensurepip && \
    rm -rf /usr/lib/python*/ensurepip /etc/nginx/http.d/default.conf

COPY app/ /app/
RUN mkdir -p /app/config /app/static /template
COPY data/config/* /app/config/
COPY data/images/* /app/static/
COPY entrypoint.sh /app/

RUN pip install --upgrade pip
RUN pip3 install --no-cache-dir -r requirements.txt
RUN pip install uwsgi-tools
RUN chmod +x /app/entrypoint.sh

EXPOSE 80

CMD ["./entrypoint.sh"]

LABEL maintainer "Matt Shields" 
LABEL description "A python application to create a About.me clone"
LABEL url "https://github.com/mattboston/about-myself"
LABEL title "About Myself"
LABEL version "v1.0.6"
LABEL architecture="amd64"
