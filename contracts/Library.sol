// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

// Uncomment this line to use console.log
import "hardhat/console.sol";

contract Library {
    struct Book {
        string title;
        string author;
        uint book_id;
    }

    Book[] public books;

    function addBook(string memory _title, string memory _author, uint _book_id) public {
        books.push(Book(_title, _author, _book_id));
    }

    function getBook(uint index) public view returns (string memory, string memory, uint) {
        require(index < books.length, "Index out of bounds");
        Book memory book = books[index];
        return (book.title, book.author, book.book_id);
    }
}