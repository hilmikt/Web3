// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "./example_mapping.sol";

contract StorageFactory{
    dogNumberCheck public DogNumberCheck;

    function createSimpleStorageContract() public {
        DogNumberCheck = new dogNumberCheck();
    }
}