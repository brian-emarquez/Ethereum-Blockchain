pragma solidity > 0.6.1 < 0.7.0;

contract AdivinaNumero{
    
   address private jugador;
   uint premio;
   uint numeroAleatorio;
   
   event Numero(uint randomnumber, uint numeroAdivinado, uint premio);
 
   function briandemo(uint numeroAdivinado) public payable {
       
       uint randomnumber = uint(keccak256(abi.encodePacked(now, msg.sender))) % 10 +1;
       
       if(numeroAdivinado == randomnumber){

            jugador = msg.sender;
            premio = 1000000000000000000;
        }
        emit Numero(randomnumber, numeroAdivinado, premio);

   }
}