//SPDX-License-Identifier: MIT

pragma solidity 0.8.17;

contract ExampleConstructor {
    address public myAddress;

    constructor(address _address) {
        myAddress = _address;
    }

    function setMyAddress(address _myAddress) public {
        myAddress = _myAddress;
    }

    function setMyAddressToMsgSender() public {
        myAddress = msg.sender;
    }
}