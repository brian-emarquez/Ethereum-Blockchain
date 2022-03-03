pragma solidity >= 0.8.1;

// VIEW = reorna un valor
// PURE = retiorna un calculo (no permite leer ni modificar el estado)

contract contrato{

    uint value;

    function getValue() public view returns (uint){ //vies similar a get
        return value;
    }

    function getNewValue() public pure returns (uint){
        return 3 + 3;
    }

    function valuePlusThree() external view returns (uint){ 
        return value + 3;
    }
}