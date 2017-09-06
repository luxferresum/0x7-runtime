FROM node:8

RUN apt-get update
RUN apt-get install -qq libcairo2-dev libjpeg-dev libpango1.0-dev libgif-dev build-essential g++ GraphicsMagick rsync unzip
RUN wget https://github.com/rse/typopro-dtp/archive/3.7.2.zip -O typopro.zip && unzip typopro && rm typopro.zip && ls -rt1 typopro-dtp-3.7.2/dtp/*/*.ttf | xargs -IFILE cp FILE /usr/local/share/fonts/ && rm -rf rm -rf typopro-dtp-3.7.2 && fc-cache
