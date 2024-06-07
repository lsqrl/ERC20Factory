#!/bin/bash

rpc_url=$(grep RPC_URL .env | cut -d '=' -f2)
private_key=$(grep PRIVATE_KEY .env | cut -d '=' -f2)
arbiscan_api_key=$(grep ARBISCAN_API_KEY .env | cut -d '=' -f2)

forge create --rpc-url $rpc_url --constructor-args "Stablecoin" "STB" 6 1000000 --etherscan-api-key $arbiscan_api_key --verify --private-key $private_key src/Token.sol:Token