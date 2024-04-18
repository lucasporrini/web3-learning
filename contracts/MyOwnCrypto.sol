// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^5.0.0
pragma solidity >=0.8.24 <0.9.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract MyToken is ERC20 {
    address owner;
    uint totalSupplyOfTokenAvailable = 10000 * 10 * decimals();

    constructor() ERC20("MyToken", "MTK") {}
}
