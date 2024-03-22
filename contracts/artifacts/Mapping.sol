// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract Mapping {
    // mapping allowys you to store data on the blockchain
    // it is stored in key-value pairs
    mapping(uint256 => string) public names;
    mapping(uint256 => Book) public books;

    // nested mapping
    mapping(address => mapping(uint256 => Book)) public myBooks;

    struct Book {
        string title;
        string author;
    }

    constructor() {
        names[1] = "Adam";
        names[2] = "Bruce";
        names[3] = "Carl";
    }

    function addBook(
        uint256 _id,
        string memory _title,
        string memory _author
    ) public {
        books[_id] = Book(_title, _author);
    }

    function addMyBook(
        uint256 _id,
        string memory _title,
        string memory _author
    ) public {
        // solididty has a global variable called message
        // sender is going to be the ethereum address of the person who called the addMyBook method 
        myBooks[msg.sender][_id] = Book(_title, _author);
    }
}
