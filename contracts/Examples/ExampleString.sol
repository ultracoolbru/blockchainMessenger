//SPDX-License-Identifier: MIT

pragma solidity 0.8.17;

contract ExampleString {
    string public myString = "Hello World";

    function setMyString(string memory _myString) public {
        myString = _myString;
    }

    function stringCompare(string memory _myString) public view returns(bool) {
        return keccak256(abi.encodePacked(myString)) == keccak256(abi.encodePacked(_myString));
    }
}

contract ExampleMyBytes {
    bytes public myBytes = "Hello World";
}