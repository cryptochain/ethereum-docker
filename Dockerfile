FROM ethereum/client-go:stable
MAINTAINER Dmitry Ananichev <a@qozz.ru>

RUN uname -a
RUN mkdir /root/.ethereum
RUN mkdir /root/.ethereum/devchain
RUN mkdir /root/files
RUN geth version

VOLUME /root/.ethereum/devchain
VOLUME ./files/password:/root/files/password:ro
VOLUME ./files/genesis.json:/root/files/genesis.json:ro
VOLUME ./files/keystore:/root/.ethereum/devchain/keystore:rw

EXPOSE 30303 30303/udp 8545 8546

ENTRYPOINT ["geth"]
