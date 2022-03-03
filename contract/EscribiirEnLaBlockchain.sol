// Link del contrato
// https://ropsten.etherscan.io/address/0x43b9085a21505aebb3b010e1a89f24e6af803d06#code

/**
 *Submitted for verification at Etherscan.io on 2022-02-14
*/

// SPDX-License-Identifier: MIT

pragma solidity >= 0.7.0 < 0.8.0;

contract EscribirEnLaBlockchain{
    string texto;

    function Escribir(string calldata _texto) public{
        texto = _texto;
    }
    function Leer() public view returns(string memory) {
        return texto;
    }
}
