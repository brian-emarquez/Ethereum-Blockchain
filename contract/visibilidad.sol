pragma solidity >= 0.7.0;

// metodos de alcance

contract Visibilidad {

    uint internal billetera = 300; // agrega los mismas propiedades de private
    uint external billetera = 300; // agrega los mismas propiedades de public

    function x() public view returns(uint){ // se muestra, acceso a la informacion
        uint data = 9;
        return data;
    }
    function y() private view returns(uint){ // no se muestra, denegacion 
        uint data = 9;
        return data;
    }
}