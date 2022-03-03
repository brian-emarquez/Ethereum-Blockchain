// SPDX-License-Identifier: GPL-3.0

pragma solidity >= 0.8.1;

contract A {
    uint public data = 10;

    function x() external pure returns (uint){
        uint newData = 25;
        return newData;
    }

    function l() public view returns (uint){
        uint newData = 3;
        return newData;
    }

    function y() public view returns (uint){
        return data;
    }
}
    
contract B {
    A a = new A();

    function f() public view returns (uint) {
        return a.l();
    }
}

contract C {

    // variable de estado privada
    uint private data;

    // variable de esta publica
    uint public info;

    constructor() public {
        info = 10;
    }

    // funcion privada
    function increment(uint a) private pure returns (uint) { return a + 1 ; }

    // funcion publica
    function updateData(uint a) public { data = a; }
    function getData() public view returns (uint) { return data; }
    function compute(uint a, uint b) internal pure returns (uint) {return a + b; }
    
}

contract D {
    C c = new C();

    function readInfo() public view returns(uint) {
        return c.info();
    }

}