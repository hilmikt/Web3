// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract dogNumberCheck{
    uint myOwnedDogs;

    struct Person {
        string name;
        uint256 ownedDogs;
    }

    Person[] public listOfPeople;

    mapping(string => uint256) public nameToOwnedDogs;

    function store(uint256 _myOwnedDogs) public {
        myOwnedDogs = _myOwnedDogs;
    }

    function retrieve() public view returns(uint256) {
        return myOwnedDogs;
    }

    function addPerson(string memory _name, uint256 _ownedDogs) public {
        listOfPeople.push( Person(_name, _ownedDogs) );
        nameToOwnedDogs[_name] = _ownedDogs;
    }
}