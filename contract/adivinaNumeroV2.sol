pragma solidity > 0.6.1 < 0.7.0;

//https://github.com/ethereum/remix-desktop/releases
// https://remix-project.org/
//https://www.youtube.com/watch?v=_z0F5UapO-k
//https://www.youtube.com/watch?v=Dm4oRsxQKbE

contract AdivinaNumero{
    
    address private jugador;
    uint premio;
    uint numeroAleatorio;

   //nuevas variables
    uint private constant costoJuego = 200000000000000000;
    address private owner;
    bool private jugando = false;

    event Numeros(string, uint randomnumber, string, uint numeroAdivinado, string, uint premio);

   /// Constructor
   constructor() public payable{
       require(msg.value == 100000000000000000, " El contrato se debe lanzar con al menos 1 Ether. ");
       owner = msg.sender; 
    }

    function adivina(uint numeroAdivinado) public payable{

        require(msg.value == 200000000000000000, "El contrato  se debe lanzar con al menor 1 Ether.");
        require(!jugando, "Actualmente hay otro jugador, espero un momento para jugar.");

        uint randomnumber = uint(keccak256(abi.encodePacked(now, msg.sender))) % 10 + 1;

        if(numeroAleatorio == randomnumber){

           jugador = msg.sender;
           premio = 100000000000000000;
        }

       // desplegamos el mensaje
       emit Numeros("El numero generado fue: ", randomnumber, "Tu escogiste: ", numeroAdivinado, "Ganaste: ", premio);
   }
}