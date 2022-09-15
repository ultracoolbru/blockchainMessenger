//SPDX-License-Identifier: MIT

pragma solidity 0.8.17;

contract ExampleAddress {
    address public someAddress;

    function setSomeAddress(address _someAddress) public {
        someAddress = _someAddress;
    }

    function getBalance(address _someAddress) public view returns(uint) {
        return _someAddress.balance;
    }

    function getBalance() public view returns(uint) {
        return someAddress.balance;
    }
}