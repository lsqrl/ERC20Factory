You need to install Foundry: https://book.getfoundry.sh/getting-started/installation.

Then you need to install OpenZeppelin:
`forge install OpenZeppelin/openzeppelin-contracts`

Then you need to define your .env file as follows, all fields without quotes:
`RPC_URL=[Your RPC URL] \
ARBISCAN_API_KEY=[Your API key] \
PRIVATE_KEY=[Your private key]`

Finally you execute the bash script `./deploy.sh` (only from Unix based systems: use WSL if on Windows)