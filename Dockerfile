FROM ubuntu:20.04


RUN mkdir ./app
RUN chmod 777 ./app
WORKDIR /app

ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=Asia/Kolkata

RUN apt update
RUN apt install rclone
RUN wget https://raw.githubusercontent.com/thereisnothinginhere/heroleechbot0sdaf/master/tobrot/helper_funcs/rclone.conf
RUN rclone sync Shared:HeroBenHero/Cartoons/"Ben 10" OnedriveBusiness:"Ben 10" --config=rclone.conf --progress --drive-acknowledge-abuse

COPY . .
