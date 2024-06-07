// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract Token is ERC20 {

    uint8 private _decimals;

    constructor(string memory name, string memory symbol, uint8 inputDecimals, uint256 initialSupply) ERC20(name, symbol) {
        _decimals = inputDecimals;
        _mint(msg.sender, initialSupply * (10 ** uint256(inputDecimals)));
    }

    function decimals() public view override returns (uint8) {
        return _decimals;
    }
}
