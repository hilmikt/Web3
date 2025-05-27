// Get funds from users
// Withdraw funds
// Set a minimum funding value in USD

//SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

// solhint-disable-next-line interface-starts-with-i

interface AggregatorV3Interface {
  function decimals() external view returns (uint8);

  function description() external view returns (string memory);

  function version() external view returns (uint256);

  function getRoundData(
    uint80 _roundId
  ) external view returns (uint80 roundId, int256 answer, uint256 startedAt, uint256 updatedAt, uint80 answeredInRound);

  function latestRoundData()
    external
    view
    returns (uint80 roundId, int256 answer, uint256 startedAt, uint256 updatedAt, uint80 answeredInRound);
}

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

    function getPrice() public {
        // Address 0x694AA1769357215DE4FAC081bf1f309aDC325306
        // ABI
    }
    function getConversionRate() public {}

    function getVersion() public view returns (uint256){
        uint256 version = AggregatorV3Interface(0x694AA1769357215DE4FAC081bf1f309aDC325306).version();
        return version;
    }
}