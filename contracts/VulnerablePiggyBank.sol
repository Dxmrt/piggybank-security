// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract VulnerablePiggyBank {
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    function deposit() public payable {}

    function withdraw() public {
        // Anyone can withdraw
        payable(msg.sender).transfer(address(this).balance);
    }
}
