// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

// this contract will teach me
//     how to process payments with cryptocurrencies
//     how to use function modifiers
//     work with visibility
//     Events
//     Enums
contract HotelRoom {
    // enum is a data structure that is a collection of options that are immutable
    // used to keep track of states and statuses of objects
    enum statuses {
        Vacant,
        Occupied
    }
    statuses public currentStatus;

    event Occupy(address _occupant, uint256 _value);

    // determines the owner of the contract
    // payable is a modifier that allows the address to recieve Ethereum cryptocurrency
    address payable public owner;

    constructor() {
        owner = payable(msg.sender);
        // sets the room as vacant
        currentStatus = statuses.Vacant;
    }

    modifier onlyWhileVacant() {
        // require function checks if the statement is true or false
        require(currentStatus == statuses.Vacant, "Currently Occupied");
        _;
    }

    modifier costs(uint256 _amount) {
        // checks how much ether recieved
        require(msg.value >= _amount, "Not enough ether provided.");
        _;
    }

    function book() public payable onlyWhileVacant costs(2 ether) {
        currentStatus = statuses.Occupied;

        // there can be some issues with the transfer function
        // owner.transfer(msg.value);

        // so using the call function is helpful
        // call allows you to get status of funds and require that it is true
        (bool sent, bytes memory data) = owner.call{value: msg.value}("");
        require(true);

        emit Occupy(msg.sender, msg.value);
    }
}
