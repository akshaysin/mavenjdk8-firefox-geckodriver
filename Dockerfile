FROM maven:3.6.3-jdk-8
RUN echo "deb http://ftp.us.debian.org/debian/ sid main" >> /etc/apt/sources.list
RUN echo "deb-src http://ftp.us.debian.org/debian/ sid main" >> /etc/apt/sources.list
RUN apt-get update && apt-get install -y firefox

RUN wget https://github.com/mozilla/geckodriver/releases/download/v0.21.0/geckodriver-v0.21.0-linux64.tar.gz -O geckodriver.tar.gz
RUN tar xzvf geckodriver.tar.gz
RUN rm geckodriver.tar.gz

RUN mv geckodriver /usr/bin/geckodriver
