# MyToken

## Overview

MyToken is a simple Solidity smart contract that represents a token on the Ethereum blockchain. This contract allows users to mint and burn tokens, as well as track token balances.

The main features of MyToken are:

- Minting: Users can increase the total supply of tokens and assign them to a specific address.
- Burning: Users can destroy tokens, reducing the total supply and deducting them from a specific address.
- Balance tracking: The contract maintains a mapping of addresses to token balances, allowing users to query their token balance.

## Contract Details

The MyToken contract has the following public variables:

- `tokenName`: A string variable representing the name of the token.
- `tokenAbbrv`: A string variable representing the abbreviation of the token.
- `totalSupply`: An unsigned integer variable representing the total supply of tokens.

The contract also uses a mapping named `balances` to store the token balances of addresses.

## Usage

To use MyToken, you can follow these steps:

1. Deploy the MyToken contract on the Ethereum blockchain using a compatible development environment such as Remix, Truffle, or Hardhat.
2. Set the initial values for `tokenName`, `tokenAbbrv`, and `totalSupply` in the constructor of the contract.
3. Interact with the contract's functions:
   - `mint(address account, uint value)`: This function mints a specified number of tokens and assigns them to the specified account.
   - `burn(address account, uint value)`: This function burns a specified number of tokens from the specified account.
   - `balances(address)`: This function allows you to query the token balance of a specific address.

Please note that the contract requires the caller to have sufficient token balance before executing a burn operation to prevent burning more tokens than available.

## License

This project is licensed under the [MIT License](LICENSE).
