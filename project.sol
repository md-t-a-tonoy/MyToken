// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract MyToken {
    string public tokenName;
    string public tokenAbbrv;
    uint public totalSupply;
    mapping(address => uint) public balances;

    constructor(string memory name, string memory abbrv, uint supply) {
        tokenName = name;
        tokenAbbrv = abbrv;
        totalSupply = supply;
        balances[msg.sender] = supply;
    }

    function mint(address account, uint value) public {
        totalSupply += value;
        balances[account] += value;
    }

    function burn(address account, uint value) public {
        require(balances[account] >= value, "Insufficient balance");
        totalSupply -= value;
        balances[account] -= value;
    }
}
