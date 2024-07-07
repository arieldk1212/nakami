FROM python:3.9-bullseye

ENV PYTTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
COPY ./backend /backend

WORKDIR /backend
EXPOSE 8000

RUN pip install --upgrade pip && \
    pip install --no-cache-dir -r /requirements.txt && \
    adduser --disabled-password --no-create-home user

USER user