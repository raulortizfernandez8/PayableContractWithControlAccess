// Liciencia 
// SPDX-License-Identifier: GPL-3.0-or-later

// Version solidity

pragma solidity 0.8.24;

error WithDrawNotAdmin(address);
// Contrato

contract PayableContractWithControlAccess{

    // Variables
    bool success;
    address public admin;

    // Events

    event Deposited(address indexed sender, uint256 amount);
    event Withdrawn(address indexed recipient, uint256 amount);

    constructor () {
        admin = msg.sender;
    }

    function sendEther() public payable {
    emit Deposited(msg.sender, msg.value);
    }

    function withDrawEther (uint256 amount_) public {

    if(msg.sender!=admin) revert WithDrawNotAdmin(msg.sender);
    (success,) = msg.sender.call{value:amount_}("");
    require(success,"Failed transfer"); // Best practice for security reason to double check the transfer was correct.
    emit Withdrawn(msg.sender, amount_);
    }

}