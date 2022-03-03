pragma solidity >= 0.7.0;

contract Funciones{

    uint a = 50; // variable de estado, global

    constructor() public {
    }

    function sumaValores() public view returns(uint){
        uint a = 5;
        uint b = 5;
        uint resultado = a + b;
        return resultado;
    }
}
