// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract Poe {
    bytes32 private proof;

    constructor(string memory document) {
        proof = storeProof(document);
    }

    // Calculate and store document
    function storeProof(string memory document) public {
        proof = calculateProof(document);
    }

    // Get a document sha
    function calculateProof(string memory document) public returns (bytes32) {
        return sha256(document);
    }

    // Get proof
    function hasProof(bytes32 memory _hash) public returns (bool) {
        return _hash == proof ? true : false;
    }
}
