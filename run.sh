#!/bin/bash

docker run --name ethereum-testbox \
  -tid -p 30303:30303 -p 8545:8545 -p 8546:8546 -p 30303:30303/udp cryptochain/ethereum-docker:latest \
  --datadir=/root/.ethereum/devchain \
  --nodekeyhex=091bd6067cb4612df85d9c1ff85cc47f259ced4d4cd99816b14f35650f59c322 \
  --rpc \
  --rpcapi 'db,personal,eth,net,web3' \
  --rpcaddr='0.0.0.0' \
  --rpccorsdomain='*' \
  --ws \
  --wsapi 'db,personal,eth,net,web3' \
  --wsaddr='0.0.0.0' \
  --wsorigins='*' \
  --wsport=8546 \
  --networkid=1234 \
  init=/root/files/genesis.json \
  --mine
