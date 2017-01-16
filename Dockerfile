FROM java:7

ENV DEX2JAR_VERSION 2.0

RUN apt-get update && apt-get install -y wget unzip && \
    wget https://nchc.dl.sourceforge.net/project/dex2jar/dex2jar-${DEX2JAR_VERSION}.zip -O /tmp/dex2jar-${DEX2JAR_VERSION}.zip && \
    unzip /tmp/dex2jar-${DEX2JAR_VERSION}.zip -d /tmp/ && \
    mv /tmp/dex2jar-${DEX2JAR_VERSION}/* /usr/local/bin/ && \
    chmod a+x /usr/local/bin/*.sh && \
    rm -fr /tmp/* && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
