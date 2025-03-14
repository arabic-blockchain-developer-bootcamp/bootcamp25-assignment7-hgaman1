// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.26;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol"; 

contract HassanToken is ERC20, Ownable   { 
        constructor(string memory name, string memory symbol ) ERC20(name, symbol) Ownable(msg.sender) {

        }
    function mint (address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
}
