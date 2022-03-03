// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 < 0.9.0;

contract structs {
    struct listaEstudiantes{
        string aula;
        uint cantidad;
    }

    //muetras los datos enviados
    listaEstudiantes public escuelaa = listaEstudiantes("A", 30);
    
    mapping (uint => uint) public PromedioAlumno; //(ID alumno => promedioGeneral)
    mapping (string => mapping(string => uint)) public escuelaYAlumnos; //(ID escuela => (aulas => Aulas))

    function nuevoAula(string memory _aula, uint _cantidad) public view returns (listaEstudiantes memory){
        return listaEstudiantes(_aula, _cantidad);
    }

    function modificar(uint _cantidad) public returns(listaEstudiantes memory){
        escuelaa.cantidad = _cantidad;
        return escuelaa;
    }

    function setMapping(uint _id, uint _promedio) public{
        PromedioAlumno[_id] = _promedio;
    }

    function setMappingescuelaYAlumnos(string memory _escuela, string memory _aulas, uint _cant) public returns(uint){
        escuelaYAlumnos[_escuela][_aulas] = _cant;
        return escuelaYAlumnos[_escuela][_aulas];
    }
}