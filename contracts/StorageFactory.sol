// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {dogNumberCheck} from "./example_mapping.sol";
// import {dogNumberCheck, dogNumberCheck2, dogNumberCheck3} from "./example_mapping.sol";
// if it has to import more than one, but not all

contract StorageFactory{
    dogNumberCheck[] public listOfDogNumberCheck;

    function createSimpleStorageContract() public {
        dogNumberCheck newDogNumberCheck = new dogNumberCheck();
        listOfDogNumberCheck.push(newDogNumberCheck);
    }
}