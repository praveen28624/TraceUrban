FROM php:latest
RUN apt update && apt upgrade -y
RUN apt install apache2 -y
RUN apt install ffmpeg -y
RUN mkdir /TraceUrban
WORKDIR /TraceUrban
