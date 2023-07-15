// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./token.sol";

contract Crowdfunding {
    address public owner;
    Token private token;

    mapping(address => uint256) public balances;

    event FundReceived(address indexed backer, uint256 amount);
    event ProjectFunded(address indexed project, uint256 amount);

    constructor(address _tokenAddress) {
        owner = msg.sender;
        token = Token(_tokenAddress);
    }

    function fundProject(address _projectAddress, uint256 _amount) external {
        require(_projectAddress != address(0), "Invalid project address");
        require(_amount > 0, "Invalid amount");

        uint256 allowance = token.allowance(msg.sender, address(this));
        require(allowance >= _amount, "Insufficient token allowance");

        token.transferFrom(msg.sender, address(this), _amount);
        balances[_projectAddress] += _amount;

        emit ProjectFunded(_projectAddress, _amount);
    }

    function withdrawFunds(uint256 _amount) external {
        require(msg.sender == owner, "Only the owner can withdraw funds");
        require(_amount <= address(this).balance, "Insufficient contract balance");

        (bool success, ) = owner.call{value: _amount}("");
        require(success, "Withdrawal failed");
    }
}
