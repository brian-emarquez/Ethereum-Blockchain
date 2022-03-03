// SPDX-License-Identifier: GPL-3.0

pragma solidity >= 0.8.1;

contract security{

    function sendReFund() public onlyOwner returns (bool success) {
        if(!persona.send(amount)){
            //codigo
        }

    function ClaimRefund() public {
        require(balance.transfer[msg.sender] > 0);
        msg.sender.transfer(balance[msg.sender]);
    }

    function withdrawFunds(uint amount) public returns (bool success){
        require(balance[msg.sender] >= amount);
        balance[msg.sender] -= amount;  
        msg.sender.transfer(amount);       
        retunr true;
    }
    
}
}