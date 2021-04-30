pragma solidity ^0.6.6;

contract oktatasToken {
    string   _name;
    string   _symbol;
    uint8    _decimals;
    uint256  _suply;
    
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

contract coloredOktatasToken is oktatasToken{
    
    enum Color{
        kek,
        Piros,
        Sarga
    }
    
    Color public color;
        
    constructor(string memory name, string memory symbol, uint8 decimals, uint256 supply) oktatasToken(name, symbol, decimals, supply) public {
        color = Color.kek;
    }
    
    function mint(address _toMint, uint256 _amountToMint) public {
        //ellenorzes is kell, h ki mintelhet!
        
        _balance[_toMint] += _amountToMint;
        _suply += _amountToMint;
    }

      
    function burn(address _toMint, uint256 _amountToMint) public {
        //ellenorzes is kell, h ki mintelhet!
        
        _balance[_toMint] -= _amountToMint;
        _suply -= _amountToMint;
    }
    
    
    fallback() external payable {
        
    }
    
    function sendEther() public payable {} // ez kezeli automatikusan az ETH tranzakciókat, ha pl küldünk ETH-t a tokennek akkor itt vonódik le.
    
    function getEther() public view returns(uint256){
        return address(this).balance;
    }
    
    function payback(address payable _to, uint256 _amount) public {
        _to.transfer(_amount);
    }
    
    function tokensales() public payable {
        mint(msg.sender, msg.value);
    }
    
}