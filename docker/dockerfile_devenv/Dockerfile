FROM theasp/novnc:latest
EXPOSE 8080
RUN apt-get update -qq && \
    apt-get install -y curl kmod fuse libfuse2 wget nodejs npm && \
    wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb && \
    apt-get install -y ./google-chrome-stable_current_amd64.deb && \
    npm i -g n && \
    n 20.17.0 && \
    mkdir -p /work
COPY startup.sh /work
RUN chmod +x /work/startup.sh
