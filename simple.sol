// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract Poe {
    bytes32 private proof;

    // constructor(string memory document) {
    //     proof = store(document);
    // }

    // Calculate and store document
    function store(string memory document) public {
        proof = calculateProof(document);
    }

    // Get a document sha
    function calculateProof(string memory document) public returns (bytes32) {
        return sha256(abi.encodePacked(document));
    }

    // Get proof
    function hasProof(bytes32 _hash) public returns (bool) {
        if (_hash == proof) return true;

        return false;
    }
}
