pragma solidity ^0.6.6;

contract Szavazas{
    
    address public owner;
    
    mapping(address => uint256) _votes;
    mapping(address => uint256) _cancdateGets;
    
    mapping(address => bool) akiSzavazhat;
    address [] public users;
    
    constructor() public{
        owner = address(0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2);
        users.push(owner);
    }
        
    function setSzavazatok(address _user) public {
        require(msg.sender == owner,"HIBA - Nem az admin állítna be szavazati jogot!");
           users.push(_user);
           akiSzavazhat[_user] = true;
           _votes[_user] = 1;
    }
    
    function setAkireSzavazhat(address _user) public {
        require(msg.sender == owner,"HIBA - Nem az admin állítna be szavazati jogot!");
           akiSzavazhat[_user] = false;
           _cancdateGets[_user] = 0;
    }
    
    
    function szavazok(address _to) public returns (bool success){
        require ( _votes[msg.sender] > 0, "HIBA - nem vagy szavazasra jogosult!");
        if(akiSzavazhat[msg.sender] && (akiSzavazhat[_to]==false)){
            _votes[msg.sender] = 0;
            _cancdateGets[_to] = _cancdateGets[_to] + 1;
        }
    }
    
    function szavazatszamlalo(address _user) public returns(uint256 db){
        return _cancdateGets[_user];
    }
    
}
