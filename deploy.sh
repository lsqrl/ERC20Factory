#!/bin/bash

rpc_url=$(grep RPC_URL .env | cut -d '=' -f2)
private_key=$(grep PRIVATE_KEY .env | cut -d '=' -f2)

forge create --rpc-url $rpc_url --constructor-args "Test token" "TSTTKN" 18 1000000 --private-key $private_key src/Token.sol:Token