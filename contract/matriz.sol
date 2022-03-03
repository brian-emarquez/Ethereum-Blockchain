pragma solidity >= 0.8.1;

contract matrices{

    uint [] public miMatriz;
    uint [] public miMatriz2;
    uint[200] public miMatrizDeTamanoFija;

    //push
    function push(uint number) public{
        miMatriz.push(number);
    }
    //pop
    function pop () public {
        miMatriz.pop();
    }
    //length
    function getlength() public view returns(uint){
        return miMatriz.length;
    }
    //delete

    uint [] public cambiarMatriz;

    function removeElemento(uint i) public {
        cambiarMatriz[i] = cambiarMatriz[cambiarMatriz.length - 1];
        cambiarMatriz.pop();
    } 
    /*function test() public{
        cambiarMatriz.push(1);
        cambiarMatriz.push(2);
        cambiarMatriz.push(3);
        cambiarMatriz.push(4);
        cambiarMatriz.push(5);
    }

    function getArray() public view return (uint){
        return cambiarMatriz.length;
    }*/


}