// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "../lib/forge-std/src/Test.sol";
import "../src/Counter.sol";

contract CounterTest is Test {
    Counter public counter;

    function setUp() public {
        counter = new Counter();
        counter.setNumber(0);
    }


    function testSetNumber(uint256 x) public {
        counter.setNumber(x);
        assertEq(counter.number(), x);
        emit log_named_uint("Set Count", counter.number());
    }

    function testIncrement() public {
        counter.increment();
        assertEq(counter.number(), 1);
        emit log_named_uint("Incremeted Count", counter.number());

    }


}
