// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {Counter} from "../src/Counter.sol";
import {Constants} from "./Constants.sol";

contract CounterTest is Test, Constants {
    Counter public counter;

    function setUp() public {
        counter = new Counter();
        counter.setNumber(0);
    }

    function test_Increment() public {


        vm.startPrank(ACCOUNT1.Address);
        address addr = counter.heyAddress();
        console.log(addr);
        vm.stopPrank();

        counter.setNumber(1);

        uint256 time1 = counter.seeTime();
        skip(365 days);
        uint256 time2 = counter.seeTime();

        console.log("time1", time1);
        console.log("time2", time2);
        
        console.log("desde aqui se esta testeando el assert");
        assertEq(counter.number(), 1);
    }

    function testFuzz_SetNumber(uint256 x) public {
        counter.setNumber(x);
        console.log("x", x);
        console.log("desde aqui se esta testeando el assert");
        assertEq(counter.number(), x);
    }
}
