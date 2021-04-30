pragma solidity ^0.6.6;

contract oktatasToken {
    string private _name;
    string private _symbol;
    uint8 private _decimals;
    uint256 private _suply;
    
    //mindneki token balanceja
    mapping(address => uint256) _balance;
    
    
    constructor(string memory name, string memory symbol, uint8 decimals, uint256 supply) public {
        _name = name;
        _symbol = symbol;
        _decimals = decimals;
        _suply = supply;
        _balance[msg.sender] = supply;
    }
    
    function name() public view returns (string memory){
        return _name;
    }
    
    function symbol() public view returns (string memory){
        return _symbol;
    }
    
    function decimals() public view returns (uint8){
        return _decimals;
    }
    
    function totalSuply() public view returns (uint256){
        return _suply;
    }
    
    function balanceOf(address owner) public view returns (uint256 balance){
        return _balance[owner];
    }

    event Transfer(address indexed _from, address indexed _to, uint256 _value);    
    event TransferFrom(address indexed _from, address indexed _to, uint256 _value);    
    
    function transfer(address _to, uint256 _value) public returns (bool success){
        //require();
        _balance[msg.sender] = _balance[msg.sender] - _value;
        _balance[_to] = _balance[_to] + _value;
        
        emit Transfer(msg.sender, _to, _value);    
        
        return true;
    }
}