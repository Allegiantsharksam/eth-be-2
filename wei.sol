// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract EtherValue {
    // ether received is stored over here
    uint256 public amountInWei;
//receiving ether
    function receiveEther() public payable {
        // Store the amount of Ether sent in wei
        amountInWei = msg.value;
    }
    //wei amount
    function getWei() public view returns (uint256) {
        return amountInWei;
    }
    //get amount in ether
    function getEther() public view returns (uint256) {
        return amountInWei / 1 ether;
    }
    //get the amount in gwei
    function getGwei() public view returns (uint256) {
        return amountInWei / 1 gwei;
    }
}
