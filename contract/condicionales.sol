pragma solidity >= 0.7.0;

contract Condicionales{

    uint wallet = 300;

    function validateAmount()public view returns(bool){
        if(wallet == 300){
            return true;
        } else {
            return false;
        }
    }
}