// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {Token} from "../src/Token.sol";

contract TokenTest is Test {
    Token public token;

    function setUp() public {
        token = new Token("Test Token", "TST", 18, 1e6 * 1e18);
    }

    function test_Balance() public view {
        assertEq(token.balanceOf(address(this)), 1e6 * 1e18);
    }
}
