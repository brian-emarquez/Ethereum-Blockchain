pragma solidity >= 0.7.0;

contract cadenas {

    string nombre = "brian";
    string apellido = "Marquez";

    function hola() public view returns(string memory){
        return nombre;
    }
    function obtenerCaracteres()public view returns(uint){

        bytes memory stringToBytes = bytes(nombre);
        return stringToBytes.length;
    }  
}