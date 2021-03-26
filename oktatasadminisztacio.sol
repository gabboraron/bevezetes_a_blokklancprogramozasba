pragma solidity ^0.6.6;

contract oktatadmin {
    uint public hanyhallgatovan;
    
    constructor() public {
        hanyhallgatovan = 20;    
    }
    
    function ujBeiratkozas() public{
        hanyhallgatovan = hanyhallgatovan + 1;
    }
    
    function tucatbeiratkozas() public{
        hanyhallgatovan = hanyhallgatovan + 12;
    }

}