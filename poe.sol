// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract POE {
    bytes32[] private proofs;

    // Calculate document proof.
    function calculateProof(
        string memory document
    ) public pure returns (bytes32) {
        return sha256(abi.encodePacked(document));
    }

    // Store proof.
    function storeProof(bytes32 proof) public {
        proofs.push(proof);
    }

    // Check if a document has proof
    function checkDocument(string memory document) public view returns (bool) {
        return hasProof(calculateProof(document));
    }

    // Returns `true` if proof is stored.
    function hasProof(bytes32 proof) public view returns (bool) {
        for (uint256 i = 0; i < proofs.length; i++) {
            if (proofs[i] == proof) {
                return true;
            }
        }
        return false;
    }
}
