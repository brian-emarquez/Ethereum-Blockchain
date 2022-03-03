pragma solidity >= 0.8.1;

//sobrecarga de funciones

contract FuncionesOverloading{

    /*
    function x (uint lightSwich, uint wallet) public {
    }

    function x (uint walllet) public {
    }
    */

    function getSum(uint a, uint b) public pure returns(uint) {
        return a + b;
    }

    function getSum(uint a, uint b, uint c) public pure returns(uint){
        return a + b + c;
    }

    function getSumToArgs() public pure returns(uint) {
        return getSum(2, 3);
    }

    function getSumThreeArgs() public pure returns (uint) {
        return getSum(3,2,1);
    }
}                                                                             