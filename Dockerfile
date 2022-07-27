FROM php:latest
RUN apt update && apt upgrade -y
RUN apt install apache2 -y
RUN apt install ffmpeg -y
COPY start.sh /start.sh
RUN cd /
CMD ["/bin/bash", "/start.sh"]
