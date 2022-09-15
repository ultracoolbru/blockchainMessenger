//SPDX-License-Identifier: MIT

pragma solidity ^0.8.17;

contract ExampleInt {
    int public myInt;
    uint public myUint; //0 -> (2^256)-1
    uint8 public myUint8 = 255; // Be careful because you can be charged gas fees if you reach max memory allocation.

    function setMyUint(uint _myUint) public {
        myUint = _myUint;
    }

    // When reaching max memory value of an uint8 for example this will happen.
    // transact to ExampleUint.setMyUint8 errored: VM error: revert.
	// The transaction has been reverted to the initial state.
    // Note: The called function should be payable if you send value and the value you send should be less than your current balance.
    // Debug the transaction to get more information.
    function setMyUint8() public {
        myUint8++;
    }

    function setInt(int _myInt) public {
        myInt = _myInt;
    }
}