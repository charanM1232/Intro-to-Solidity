// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

// create contract with contract key word
contract Counter {
    // code goes inside here
    // State variable is a variable that is stored in the blockchain
    // They are created in the contract, not functions
    // Unsigned int can only be a positive integer
    uint public count; // gives us a free count method

    // smart contract constructor function
    // it is a special function that only executes once

    /*
    constructor() public {
        count = 0;
    }
    */

    // this is a write function that changes the state variable in the blockchain
    // you have to pay gas fee for this
    function incrementCount() public {
        count++;

    // this is a read function that gets information from the blockchain
    // you do not have to pay gas for this
    // I wont need this anymore because I made count a public variable
    /*
    function getCount() public view returns(uint){
        return count;
    }
    */

    }

}