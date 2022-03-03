pragma solidity >= 0.8.1;

//no puede tener un nombre, no toma niguna entrada, no devuelve ninguna salida, debe ser declaradao como enterno

contract FallBack{

    event Log(uint gas);
    fallback () external payable{
        emit Log(gasleft());   //gasleft - funtion especial de solidity, retorna cuanto gas queda
    }

    function getBalance() public view returns(uint){
        return address(this).balance;
    }
}

//el nuevo contrato enviara ethee al contrato fallback que enviara las funciones fallback

contract sendToFallBack {

    function transferToFallBack(address payable _to) public payable{
    //enviar ether con el metodo transfer_to.transfer(msg.value)
        _to.transfer(msg.value);
    }

    function callFallBack(address payable _to) public payable{
    //envia ether al metodo fallback
        (bool sent,) = _to.call{value:msg.value}('');
        require(sent, 'Failed to sendToFallBack');
    }
}