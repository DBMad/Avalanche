// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "hardhat/console.sol";

contract DegenToken is ERC20, Ownable {
    constructor(address initialOwner) ERC20("DegenTFT", "DGN") Ownable(initialOwner) {
        _transferOwnership(initialOwner);
    }

    event RedeemMessage(string message);

    // Mint
    function mintToken(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    //Transfer
    function transferTokens(address _receiver, uint256 amount) external {
        require(balanceOf(msg.sender) >= amount, "Insufficient balance.");
        approve(msg.sender, amount);
        _transfer(msg.sender, _receiver, amount);
    }

    //Redeem
    function redeemTokens(uint8 input) external returns (bool) {
        uint256 tokenAmount;
        
        if (input == 1) {
            tokenAmount = 200;
            emit RedeemMessage("You've redeemed this: Degen NFT Milady #5806!");
        }
        else if (input == 2) {
            tokenAmount = 500;
            emit RedeemMessage("You've redeemed this: Degen NFT Pudgy Penguins #6050!");
        }
        else if (input == 3) {
            tokenAmount = 1000;
            emit RedeemMessage("You've redeemed this: Degen NFT Bored Ape Yacht Club #7194!");
        }
        else {
            console.log("Invalid choice.");
            return false;
    }

    require(balanceOf(msg.sender) >= tokenAmount, "Insufficient balance.");
        _transfer(msg.sender, owner(), tokenAmount);
        return true;
    }

    //Check Balance
    function checkBalance() external view returns (uint256) {
        return this.balanceOf(msg.sender);
    }

    //Burn
    function burnToken(uint amount) public {
        require(balanceOf(msg.sender) >= amount, "Not enough tokens to burn.");
        _burn(msg.sender, amount);
    }
}
