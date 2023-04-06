// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract Poe {
    bytes32[] private proofs;

    // Calculate document proof.
    function calculateProof(string document) public returns (bytes32) {
        return sha256(document);
    }

    // Store proof.
    function storeProof(bytes32 proof) public {
        proofs.push(proof);
    }

    // Check if a document has proof
    function checkDocument(string document) public returns (bool) {
        return hasProof(calculateProof(document));
    }

    // Returns `true` if proof is stored.
    function hasProof(bytes32 proof) public returns (bool) {
        for (uint256 i = 0; i < proofs.length; i++) {
            if (proofs[i] == proof) {
                return true;
            }
        }
        return false;
    }
}
