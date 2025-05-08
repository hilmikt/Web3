// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleStorage{
    uint256 myFavouriteNumber;
    
    struct Person {
        uint256 favouriteNumber;
        string name;
    }

    Person[] public listOfPeople;  //dynamic array

    mapping(string => uint256) public nameToFavouriteNumber;

    // Person public afs = Person(7, "Afs");
    // Person public afs = Person({favouriteNumber: 7, name: "Afs"});

    function store(uint256 _favNumber) public {
        myFavouriteNumber = _favNumber;
    }

    function retrieve() public view returns(uint256) {
        return myFavouriteNumber;
    }

    function addPerson(string memory _name, uint256 _favouriteNumber) public {
        listOfPeople.push( Person(_favouriteNumber, _name) );
        nameToFavouriteNumber[_name] = _favouriteNumber;
    }

}