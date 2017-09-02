FROM node:8

apt-get update
apt-get install -qq libcairo2-dev libjpeg-dev libpango1.0-dev libgif-dev build-essential g++ GraphicsMagick rsync

# debug
