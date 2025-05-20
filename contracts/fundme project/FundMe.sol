// Get funds from users
// Withdraw funds
// Set a minimum funding value in USD

//SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

contract FundMe {

    //uint256 public myValue = 1;
    uint256 public minimumUsd = 5;

    function fund() public payable {
        // Allow users to send $
        // Have a minimum 5$ sent
        // How do we send ETH to this contract?
        //myValue = myValue + 1; → example of reverting if the user didn't send enough ETH
        require(msg.value >= minimumUsd, "didn't send enough ETH");  // 1e18 = 1 ETH = 1000000000000000000 = 1 * 10 ** 18 WEI
    }

    //function withdraw() public {}
}