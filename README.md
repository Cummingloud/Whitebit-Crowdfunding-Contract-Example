# Decentralized Crowdfunding Platform

This repository contains the smart contract code for a decentralized crowdfunding platform built on the Ethereum blockchain.

## Introduction

The Decentralized Crowdfunding Platform allows users to create projects and receive funding from backers using a custom token. It provides a transparent and trustless environment for crowdfunding campaigns.

The project consists of two main contracts:
- `Crowdfunding.sol`: Implements the core functionality of the decentralized crowdfunding platform.
- `Token.sol`: Represents a basic ERC20 token contract that handles token transfers.

## Contracts

### Crowdfunding.sol

The `Crowdfunding.sol` contract is responsible for managing the crowdfunding platform. It includes features such as creating projects, accepting contributions, and withdrawing funds.

Key Features:
- Users can create projects by calling the `fundProject` function and specifying the project address and funding amount.
- Backers can contribute to projects by transferring tokens to the contract using the `fundProject` function.
- The owner of the contract can withdraw funds from successful projects using the `withdrawFunds` function.

### Token.sol

The `Token.sol` contract represents a basic ERC20 token contract that handles token transfers. It includes functions for transferring tokens between addresses.

Key Features:
- Users can transfer tokens to other addresses using the `transfer` function.
- The `allowance` and `transferFrom` functions allow for delegated token transfers.

## Getting Started

To deploy and interact with the decentralized crowdfunding platform contract, follow these steps:

1. Deploy the `Token.sol` contract on the Ethereum network of your choice.
2. Take note of the deployed token contract address.
3. Deploy the `Crowdfunding.sol` contract, passing the token contract address as an argument to the constructor.
4. Interact with the deployed `Crowdfunding.sol` contract using the available functions to create projects, contribute to projects, and withdraw funds.

## Contributing

Contributions to this decentralized crowdfunding platform project are welcome! If you have any ideas, improvements, or bug fixes, please feel free to open an issue or submit a pull request.

## License

This project is licensed under the [MIT License](LICENSE).

