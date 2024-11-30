# Building on Avalanche - ETH + AVAX

This project demonstrates an ERC20 Token deployed on the Avalanche network.

# REQUIREMENT

  1. Minting new tokens: The platform should be able to create new tokens and distribute them to players as rewards. Only the owner can mint tokens.
  2. Transferring tokens: Players should be able to transfer their tokens to others.
  3. Redeeming tokens: Players should be able to redeem their tokens for items in the in-game store.
  4. Checking token balance: Players should be able to check their token balance at any time.
  5. Burning tokens: Anyone should be able to burn tokens, that they own, that are no longer needed.

# Executing program

To run this program, you can use Remix, an online Solidity IDE. (https://remix.ethereum.org/)

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension.

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to a compatible version (in this case I used pragma solidity 0.8.20, make sure your version should be 0.8.0 and above), and then click on the "Compile Filename.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar.

For the demonstration:

1. Select the Injected Provider - Metamask in the environment
2. Deploy the smart contract using the address that has the AVAX balance.
3. Interact with the available functions (mintToken, transferTokens, redeemTokens, checkBalance, burnToken)

# Authors
Darryl Madarang 202110370@fit.edu.ph
