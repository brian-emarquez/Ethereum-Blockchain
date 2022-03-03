pragma solidity >= 0.8.1;

contract bits{

    uint numero = 4;

    //conversion recorta los valores de ato orden

    uint32 a = 0x12345678;
    uint16 b = uint16(a); //b = 0x5678

    uint32 c = 0x1234;
    uint16 d = uint32(c);  //d = 0x00005678

    uint32 e = 0x1234;
    uint16 f = bytes1(e); //f = 0x12

    uint32 g = 0x1234; // h = 0x12340000
    uint32 h = bytes4(g); // h = 0x12340000

}