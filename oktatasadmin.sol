pragma solidity ^0.6.6;

contract Oktatasadmin{
    //mapping (address => uint) pontok;
    
    enum PontTipus{
        alma,
        korte,
        szilva
    }
    
    struct PontStruktura{
        PontTipus pontTipus;
        uint hanyPont;
        uint ervenyesseg;
    }
    
    mapping(address => PontStruktura) public pontok;
    
    
    address AzAdminisztrator; //a futtató account címe
    
    constructor () public {
        AzAdminisztrator   = msg.sender;
        //pontok[msg.sender] = 100;
        PontStruktura memory struktura = PontStruktura(PontTipus.alma, 100, 10);
        pontok[msg.sender] = struktura;
    }
    
    function HanyPontjaVan(address _valaki) public view returns(PontTipus tipus, uint hany, uint erv){
        tipus = pontok[_valaki].pontTipus;
        hany  = pontok[_valaki].hanyPont;
        erv   = pontok[_valaki].ervenyesseg;
        //return pontok[_valaki];
    }
    
    function PontokKiosztas(address _valaki, uint _hanypontotadunk) public {
        require(msg.sender == AzAdminisztrator, "nem admin hívta!");
        //pontok[_valaki] +=_hanypontotadunk;
    }
    
    function PontBEallitas(address _valaki, uint _hanypontotallitunkbe) public {
        //pontok[_valaki] = _hanypontotallitunkbe;
    }
    
    function PontKuldes(address _from, address _to, uint mennyi) public {
        //require(pontok[_from]> mennyi, "nincs elég a küldéshez");
        require(msg.sender == _from, "nem a sajat szamlarol indít");
        //pontok[_from] -= mennyi;
        //pontok[_to] += mennyi;
    }
}