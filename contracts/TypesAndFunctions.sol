// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract TypesAndFunctions {
    uint public age = 17;
    string public name = "Hilmi";
    bool public isDev = true;
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    function updateAge(uint _newAge) public {
        age = _newAge;
    }

    function getSummary() public view returns (string memory, uint) {
        return (name, age);
    }
}