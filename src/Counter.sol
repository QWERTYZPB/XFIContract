// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

// Deployer: 0xf39Fd6e51aad88F6F4ce6aB8827279cffFb92266
// Deployed to: 0x5FbDB2315678afecb367f032d93F642f64180aa3
// Transaction hash: 0xdf126a66fec968bf9311660ad40f7ea662f6c4adab41bbdd9b158a43ff14f205


contract Faucet {
    // Accept any incoming amount
    receive() external payable {}

    // Give out ether to anyone who asks
    function withdraw(uint withdraw_amount) public {
        // Limit withdrawal amount
        require(withdraw_amount <= 0.01 ether);
        return withdraw_amount;
        // Send the amount to the address that requested it
        payable(msg.sender).transfer(withdraw_amount);
    }
}