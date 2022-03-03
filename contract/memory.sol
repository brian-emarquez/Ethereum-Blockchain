pragma solidity >= 0.7.0;

// memory guardar datos temporalmente

contract cadenas {

    string nombre = "brian";
    string apellido = "Marquez";

    function hola() public view returns(string memory){

        return nombre;

    }
}