FROM alpine:3

ENV APP_HOME /app
WORKDIR $APP_HOME

# Dependencies for file upload used by file plugin:
RUN apk add vips-dev tzdata --no-cache \
  --repository https://alpine.global.ssl.fastly.net/alpine/edge/testing/ \
  --repository https://alpine.global.ssl.fastly.net/alpine/edge/main

## TODO! change it to use imagemagick that is smaller than vips-dev
# ENV MAGICK_HOME=/usr
# RUN apk add --no-cache imagemagick imagemagick-dev

CMD $APP_HOME/main start-server