// SPDX-License-Identifier: GPL-3.0

pragma solidity >= 0.8.1;

contract Oracle{
    address admin;
    uint public rand;

    constructor() public{
        admin = msg.sender;
}

    function feedRand(uint _rand) external {
        require(msg.sender == admin);
        rand = _rand;
    }
}
 
contract GenerateRandomNumber{

    Oracle oracle;

    constructor(address oracleAddress){
        oracle = Oracle(oracleAddress);
    }

    //keccak256
    //numero aleatorio

    function randMod(uint range) external view returns (uint){
        return uint(keccak256(abi.encodePacked(oracle.rand(), block.timestamp, block.difficulty, msg.sender))) % range;
    }
}