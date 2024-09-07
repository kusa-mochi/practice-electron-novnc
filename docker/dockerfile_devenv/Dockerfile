FROM theasp/novnc:latest
EXPOSE 8080
RUN apt-get update -qq && \
    apt-get install -y nodejs npm && \
    npm i -g n && \
    n 20.17.0
