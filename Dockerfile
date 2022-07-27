FROM python:latest
RUN curl ifconfig.me
RUN apt update && apt upgrade -y
RUN apt install apache2 -y
RUN apt install ffmpeg -y
RUN ufw allow 'Apache'
RUN systemctl status apache2
COPY start.sh /start.sh
RUN cd /
CMD ["/bin/bash", "/start.sh"]
