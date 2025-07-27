// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SecurePiggyBank {
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    function deposit() public payable {}

    function withdraw() public {
        require(msg.sender == owner, "You are not the owner!");
        payable(msg.sender).transfer(address(this).balance);
    }
}
