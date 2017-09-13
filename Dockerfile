FROM ubuntu:16.04

WORKDIR /app
USER root

RUN apt-get update
RUN apt-get install -y software-properties-common python-software-properties

RUN add-apt-repository -y ppa:jonathonf/gcc-7.1
RUN apt-get update
RUN apt-get install -y gcc-7 g++-7 git build-essential cmake libuv1-dev

RUN git clone https://github.com/xmrig/xmrig.git
WORKDIR /app/xmrig

RUN mkdir build
WORKDIR /app/xmrig/build
RUN cmake .. -DCMAKE_C_COMPILER=gcc-7 -DCMAKE_CXX_COMPILER=g++-7
RUN make

CMD ./xmrig -c $XMRIG_JSON_CONFIG_PATH

