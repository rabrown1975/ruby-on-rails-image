from ruby:latest

RUN apt-get update && \
    apt-get install postgresql-client lsb-release curl apt-transport-https gnupg -y --no-install-recommends

RUN addgroup --gid 1000 someuser && \
    adduser --home /data --uid 1000 --gid 1000 --disabled-password someuser

COPY secondary-setup.sh .

RUN sh ./secondary-setup.sh

USER someuser

RUN gem install rails

EXPOSE 3000