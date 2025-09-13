// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;
import {SafeTransferLib} from "@solady/utils/SafeTransferLib.sol";

contract Counter {
    uint256 public number;

    function setNumber(uint256 newNumber) public {
        number = newNumber;
    }

    function increment() public {
        number++;
    }

    function heyAddress() public returns(address) {
        return msg.sender;
    }

    function seeTime() public view returns(uint) {
        return block.timestamp;
    }

}
