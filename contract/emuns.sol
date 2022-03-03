pragma solidity >=0.8.1;

// los emuns restringen una variable a uno de los pocos valores predefinidos
// los valores de esta lista enumerada se dormomina emuns

contract emuns{
    enum tamanoPapaFritas {GRANDE, MEDIANO, PEQUENO}
    tamanoPapaFritas choice;
    tamanoPapaFritas constant defaultChoice = tamanoPapaFritas.GRANDE;

    function getSmall() public{
        choice = tamanoPapaFritas.PEQUENO;
    } 

    function getChoice() public view returns(tamanoPapaFritas){
        return choice;
    }
    
    function getDefaultChoice() public view returns(uint){
        return uint(defaultChoice);
    }

}