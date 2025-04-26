// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract HelloWorld {
    string public greeting = "Hello, Web3!";

    function setGreeting(string memory _newGreet) public {
        greeting = _newGreet;
    }

    function getGreeting() public view returns (string memory) {
        return greeting;
    }

    function tweaking() public pure returns (string memory) {
        string memory creatorName = "Hilmi";
        return string(abi.encodePacked("Hello ", creatorName, " from Web3!"));
}
}
