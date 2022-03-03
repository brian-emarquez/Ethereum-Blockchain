// SPDX-License-Identifier: GPL-3.0

// requireverificará si una condición es verdadera y permitirá que el código fluya solo si la condición es verdadera.
// Si la condición es falsa, require arrojará un error, el resto del código no se ejecutará y la transacción sí

pragma solidity >= 0.8.1;

contract Coin{
    address public minter;
    mapping (address => uint) public balances;

    event Sent(address from, address to, uint amount);

    constructor(){
        minter = msg.sender;
    }

    // envia cantidad de moneda creada la direccion especifica

    function mint(address receiver, uint amount) public {
        require (msg.sender == minter);
        balances[receiver] += amount;
    }

    error InsufficentBalance(uint requested, uint available);

    //funcion envia moneda existente
    function send(address receiver, uint amount) public {
        if (amount > balances[msg.sender]) 
            revert InsufficentBalance({
                requested: amount, 
                available: balances[msg.sender]
        });

        balances [msg.sender] -= amount;
        balances[receiver] += amount;
        emit Sent(msg.sender, receiver, amount); 

    }
}
