// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract CounterContract {
    address owner;

    struct Counter {
        string description;
    }

    Counter counter;

    modifier onlyOwner() {
        require(msg.sender == owner, "Only the owner can increment or decrement the counter");
        _;
    }

    constructor (string memory initial_description) {
        owner = msg.sender;
        counter = Counter(initial_description);
    }
    
    function current() external view returns(string memory){
        return counter.description;
    }

}