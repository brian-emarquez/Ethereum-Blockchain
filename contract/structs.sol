pragma solidity >=0.8.1;

contract structs{
    
    struct Libro{
        string titulo;
        string tema;
        uint id_libro;
        string autor;
    }

    Libro libro;

    function setBook() public{
        libro = Libro('Curso Solidity por Brian', 'Solidity', 40, 'Brian');
    }

    function setBookId() public view returns (uint){
        return libro.id_libro;
    }
}