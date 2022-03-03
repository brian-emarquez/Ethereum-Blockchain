// SPDX-Licence-Identifier: GPL-3.0

pragma solidity >=0.7.0 < 0.9.0;

contract structs {
    struct listaEstudiantes{
        string aula;
        uint cantidad;
    }
    
    //muetras los datos enviados
    listaEstudiantes public escuelaa = listaEstudiantes("A", 30);

    function nuevoAula(string memory _aula, uint _cantidad) public view returns (listaEstudiantes memory){
        return listaEstudiantes(_aula, _cantidad);
    }

    function modificar(uint _cantidad) public returns(listaEstudiantes memory){
        escuelaa.cantidad = _cantidad;
        return escuelaa;
    }
}