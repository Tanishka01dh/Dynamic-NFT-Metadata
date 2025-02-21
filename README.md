# Dynamic-NFT-Metadata

## Overview
DynamicNFT is a smart contract written in Solidity that allows the creation of NFTs with attributes that change over time. The contract is deployed on the Edu Chain.

## Features
- **NFT Minting**: Users can mint new NFTs without requiring any input during deployment.
- **Time-Based Attributes**: NFT attributes change dynamically as time progresses:
  - **Young**: Less than 30 days old.
  - **Mature**: Between 30 and 90 days old.
  - **Ancient**: More than 90 days old.
- **On-Chain Storage**: NFT metadata is stored and retrieved on-chain.

## Deployment Details
- **Deployed Address**: `0xbA7970ACFb74A2EF700441C9153CbB667EFD65Da`
- **Blockchain**: Edu Chain

## How It Satisfies the Requirements
1. **Create NFTs that change attributes over time**:
   - Each NFT has a `creationTime` stored on-chain.
   - The `getAttribute(tokenId)` function calculates the NFT's age based on the current timestamp and dynamically returns different attributes (`Young`, `Mature`, or `Ancient`).
2. **Write this smart contract in Solidity**:
   - The contract is fully implemented in Solidity (`pragma solidity ^0.8.0;`).
3. **No Imports and Constructors**:
   - The contract does not use any external imports.
   - There is no constructor defined in the contract.
4. **No Input Fields**:
   - The contract does not require any input parameters during deployment.
   - The minting function operates without additional input beyond the call itself.

## How It Works
1. Call the `mint` function to create a new NFT.
2. Use `getAttribute(tokenId)` to check the attribute of an NFT based on its age.
3. The attribute updates automatically as time progresses.

## License
This project is open-source and available under the MIT License.

