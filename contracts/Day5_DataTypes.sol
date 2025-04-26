// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Day5_DataTypes {
    uint public age = 17;
    string public name = "Hilmi";
    bool public isLearning = true;
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    function updateAge(uint _newAge) public {
        age = _newAge;
    }

    function getDetails() public view returns (string memory, uint, bool) {
        return (name, age, isLearning);
    }

    function getDouble(uint _x) public pure returns (uint) {
        return _x * 2;
    }
}
