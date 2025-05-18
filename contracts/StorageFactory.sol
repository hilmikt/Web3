// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {dogNumberCheck} from "./example_mapping.sol";
// import {dogNumberCheck, dogNumberCheck2, dogNumberCheck3} from "./example_mapping.sol";
// if it has to import more than one, but not all

contract StorageFactory{
    //dogNumberCheck[] public listOfDogNumberCheck;
    address[] public listOfSimpleStorageAddresses;

    function createSimpleStorageContract() public {
        dogNumberCheck newDogNumberCheck = new dogNumberCheck();
        listOfDogNumberCheck.push(newDogNumberCheck);
    }

    function sfStore(uint256 _simpleStorageIndex, uint256 _newSimpleStorageNumber) public {
        // Address
        // ABI - Application Binary Interface
        SimpleStorage mySimpleStorage = listOfDogNumberCheck[_simpleStorageIndex];
    }
}