FROM php:latest
RUN curl ifconfig.me
RUN apt update && apt upgrade -y
RUN apt install apache2 -y
RUN apt install ffmpeg -y
COPY start.sh /start.sh
RUN cd /
COPY composer.json /composer.json
RUN cd /
COPY index.php /index.php
RUN cd /
CMD ["/bin/bash", "/start.sh"]
