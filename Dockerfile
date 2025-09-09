# FROM python:3-alpine
FROM python:3.13-alpine

ENV version=v1.0.10
ENV PYTHONPATH=/app

WORKDIR /app

# Install uv
RUN pip install uv

COPY app/ /app/
COPY pyproject.toml uv.lock /app/
RUN mkdir -p /app/config /app/static /template
COPY data/config/* /app/config/
COPY data/images/* /app/static/
COPY entrypoint.sh /app/

# Install dependencies using uv
WORKDIR /app
RUN uv sync --frozen
RUN chmod +x /app/entrypoint.sh

EXPOSE 80

CMD ["./entrypoint.sh"]

LABEL maintainer "Matt Shields"
LABEL description "A python application to create a About.me clone"
LABEL url "https://github.com/mattboston/about-myself"
LABEL title "About Myself"
LABEL version "v1.0.10"
LABEL architecture="amd64"
