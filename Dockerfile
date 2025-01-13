FROM ubuntu:latest

# Установка Git и необходимых пакетов
RUN apt-get update && \
    apt-get install -y git && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Создание рабочей директории
WORKDIR /app

# Настройка Git
RUN git config --global user.email "example@example.com" && \
    git config --global user.name "Docker User"

# Команда при запуске контейнера
CMD ["bash"]