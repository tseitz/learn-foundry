// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract Storage {
    uint256 number;

    function store(uint256 num) public {
        number = num;
    }

    function retrieve() public view returns (uint256) {
        return number;
    }
}

import "forge-std/Test.sol";

contract StorageTest is Test {
    Storage storageContract;

    function setUp() public {
        storageContract = new Storage();
    }

    function testSetWorks() public {
        assertEq(storageContract.retrieve(), 0);
        storageContract.store(5);
        uint256 result = storageContract.retrieve();
        assertEq(result, 5);
        console.log(result);
    }
}
