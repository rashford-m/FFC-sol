// SPDX-LICENSE-Identifier: MIT

pragma solidity ^0.8.8;


contract FundMe {
    uint256 public minimumUsd = 50 * 1e18;

    address[] public funders;
    mapping(address => uint256) public addressToAmountFunded;

    function fund() public payable {
        // want to be able to set a minimum fund amount in USD
        // 1. How do we send ETH to this contract
        require(getConversionRate(msg.value) >= minimumUsd, "Didn't sent enough!");
        funders.push(msg.sender);
        addressToAmountFunded[msg.sender] = msg.value;
    }

    function getPrice() public view returns(uint256) {

    }
}



