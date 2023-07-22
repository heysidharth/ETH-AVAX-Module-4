# ETH-AVAX-Module-4 (Alvanche)

## Description

The Degen Token is an ERC20-compliant token smart contract written in Solidity. It allows users to transfer and manage tokens on the Ethereum blockchain. The contract supports functionalities such as transferring tokens, approving token transfers, minting new tokens, redeeming tokens, burning token, check balance i.e total supply. 

we have taken ->Token Name: Degen Token
-> Token Symbol: DEGEN for deployment of the dependencies of the project 


### ERC-20 Compliance

The Degen Token contract strictly follows the ERC-20 standard, which ensures compatibility with various decentralized applications, exchanges, and wallets that support ERC-20 tokens. This compliance guarantees that the token can be seamlessly traded, exchanged, and interacted with other ERC-20 compatible contracts and platforms.

# Contract Features


### Token Mint: 
we mint the token to add the value. The total supply of tokens is defined during contract creation

### Token Balance:
The contract provides a balanceOf function to inquire about the balance of Degen Tokens for a given Ethereum address.

### Token transfer:
Users can transfer Degen Tokens between addresses using the transfer function. Standard ERC-20 rules apply to transfers, including preventing transfers to the contract itself and handling of insufficient token balances.

### Token Reedem:
user can reedem their token and take their reward and futher they can burn the token too from the totalsupply of the token.

### Token Burn:
we Burn the token to deduct the value of total from the totalsupply


### procedure

Fuji Testnet Settings:

  Network Name: Avalanche Fuji C-Chain

  New RPC URL: https://api.avax-test.network/ext/bc/C/rpc

  ChainID: 43113

  Symbol: AVAX

  Explorer: https://testnet.snowtrace.io/


### Step to follow

1. Connect Remix IDE with MetaMask Wallet by changing environment to Inject provider.
2. Deploy the contract in the Avalanche network
3. Get the API key from ```snowtracer.io```
4. Get the contract verified. You'd need Contract address, compiler versoin, API key and contract name.
5. Players can then start interacting with the contract using the functions provided - transfer, redeem, and checkBalance - to participate in Degen Gaming and earn rewards.

## Author
Sidharth Samantaray
@heysidharth

## License

This project is licensed under the MIT License - see the LICENSE.md file for details
