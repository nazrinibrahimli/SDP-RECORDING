FROM python:3.8

ENV PATH="/scripts:${PATH}"
ENV PYTHONUNBUFFERED 1
COPY ./requirements.txt /requirements.txt

RUN pip install -r /requirements.txt


RUN mkdir /app
COPY ./recording /app
WORKDIR /app
COPY ./scripts /scripts

RUN chmod +x /scripts/*


run mkdir -p /vol/web/media
run mkdir -p /vol/web/static




CMD ["entrypoint.sh"]
