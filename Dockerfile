
FROM myoung34/github-runner:latest

RUN curl -sL https://deb.nodesource.com/setup_12.x | bash - \
    && apt-get update \
    && apt-get install -y -q nodejs \
    && apt-get install -y -q libusb-1.0 \
    && apt-get install -y -q libudev-dev \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
    
RUN alias python=python3
RUN npm install -g yarn