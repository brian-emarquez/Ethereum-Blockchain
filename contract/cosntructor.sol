pragma solidity >= 0.8.1;

contract Member {

    string name;
    uint age;

    //iniciar variable
    constructor(string memory _name, uint _age) public {
        name = _name;
        age = _age;
    }    

}

contract Intructor is Member{

    constructor(string memory n, uint a) Member(n, a) public {}

    function getName() public view returns(string memory){
        return name;
    }
}