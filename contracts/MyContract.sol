// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyContract {
    // state variable - are stored on the blockchain
    int256 public myInt  = -1;

    uint public myUint = 1;
    // uint256 is the default integer byte size of uint
    uint256 public myUint256 = 1;
    uint8 public myUint8 = 1;

    string public myString = "Hello, World!";
    // stores the string in a byte32 format
    // treated more like an array
    bytes32 public myBytes32 = "Hello, World!";

    address public MyAddress = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

    // you can create your own datatypes using structs
    struct Mystruct{
        uint myUint;
        string myString;

    }

    Mystruct public myStruct = Mystruct(1, "Hello, Worls!");


    // local variable - variables initialized inside functions
    // pure indicated that it does not modify/mutate anything on the blockchain
    function getValue() public pure returns(uint){
        uint value = 0;
        return value;
    }



}