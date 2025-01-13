FROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y git python3 && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /app

RUN git config --global user.email "example@example.com" && \
    git config --global user.name "Docker User"

CMD ["bash"]