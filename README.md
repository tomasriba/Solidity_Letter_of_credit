# Letter of Credit - Solidity Smart Contract

A Solidity implementation of a Letter of Credit agreement between an issuing bank and an exporter. This contract allows secure handling of trade documents, conditional validation, and final contract approval on the Ethereum blockchain.

This code was developed for a Master's Degree project about Blockchain in International Commerce (https://openaccess.uoc.edu/bitstream/10609/146956/3/tribabTFM0622memoria.pdf)

The contract simulates a simplified letter of credit process:
- Issuing Bank deploys the contract and sets the exporter and initial document hash.
- Exporter (seller) submits required documents (e.g., shipping, customs, insurance).
- Issuing Bank validates submitted documents individually.
- Once all conditions are satisfied, the bank can validate the overall Letter of Credit.

Features:
- Define roles: Issuing Bank (contract deployer) and Exporter.
- Register and track submitted trade documents (sendIDDocument).
- Verify document validity individually (validateDocument).
- Approve the overall Letter of Credit (validateLettreCredit).

Requirements:
- Solidity compiler ^0.6.x
- Ethereum client or development framework (Remix IDE, Truffle, Hardhat)

Steps:
1. Compile the contract using Solidity >=0.4.21 <0.7.0.
2- Deploy the contract from the Issuing Bank’s account, providing:
  _Exporter → the exporter’s Ethereum address.
  _DocHash → hash of the initial letter of credit document.
3. Interact with the contract via Remix, Truffle console, or front-end dApp.
