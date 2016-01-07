FROM ubuntu:15.04

RUN apt-get update && apt-get install -y cron wget

# Add these lines to your own Dockerfile
RUN echo " * * * * * root date >> /tmp/foo.log" >> /etc/crontab

CMD cron -f
