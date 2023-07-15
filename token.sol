// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Token {
    mapping(address => uint256) public balances;

    event Transfer(address indexed from, address indexed to, uint256 value);

    function transfer(address _to, uint256 _amount) external {
        require(_to != address(0), "Invalid recipient");
        require(_amount > 0, "Invalid amount");

        require(balances[msg.sender] >= _amount, "Insufficient balance");

        balances[msg.sender] -= _amount;
        balances[_to] += _amount;

        emit Transfer(msg.sender, _to, _amount);
    }

    function allowance(address _owner, address _spender) external pure returns (uint256) {
        // Add allowance implementation
    }

    function transferFrom(address _from, address _to, uint256 _amount) external pure returns (bool) {
        // Add transferFrom implementation
    }
}
