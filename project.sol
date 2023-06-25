// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract MyToken {

// public variables here
    string public tokenName;
    string public tokenAbbrv;
    uint public totalSupply;


// mapping variable here
    mapping(address => uint) public balances;


/*Call the setTokenDetails function with the following parameters:
name: The name of the token.
abbrv: The abbreviation of the token.
supply: The total supply of tokens.*/
    function setTokenDetails(string memory name, string memory abbrv, uint supply) public {
        tokenName = name;
        tokenAbbrv = abbrv;
        totalSupply = supply;
        balances[msg.sender] = supply;
    }


// mint function
//This function mints a specified number of tokens and assigns them to the specified account.
    function mint(address account, uint value) public {
        require(account != address(0), "Invalid address");
        totalSupply += value;
        balances[account] += value;
    }

    
// burn function
//This function burns a specified number of tokens from the specified account.
    function burn(address account, uint value) public {
        require(account != address(0), "Invalid address");
        require(balances[account] >= value, "Insufficient balance");
        totalSupply -= value;
        balances[account] -= value;
    }
}
