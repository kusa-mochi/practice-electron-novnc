FROM theasp/novnc:latest
ARG node_version

# for electron dev
EXPOSE 5173
# for novnc
EXPOSE 8080

RUN apt-get update -qq && \
    apt-get install -y curl kmod fuse libfuse2 wget nodejs npm && \
    wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb && \
    apt-get install -y ./google-chrome-stable_current_amd64.deb && \
    npm i -g n && \
    n ${node_version} && \
    mkdir -p /work
COPY startup.sh /work
RUN chmod +x /work/startup.sh
WORKDIR /work
