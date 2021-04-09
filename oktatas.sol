pragma solidity ^0.6.6;

contract Oktatas{
    
    
    enum OktatasTipusa { //ezek számok a háttérben
        Tantermi, 
        Online,
        Hibrid
    }
    
    //properties
    
    //atomic types
    bool public isActiveOktatas;
    int8 public szekekszama;
    uint8 public csakpozitivSzekekSzama;
    uint public hallgatokSzama;
    
    
    //complex types
    string public tantargyNeve; //byte string
    address public owner = address(0xd24c2A01431dCFb85a8CDED4693D5CDCE373bde0); //20 bájtos ethereum cím
    address public targyadminisztrator;
    OktatasTipusa public tipus;
    uint[] public diakigazolvanyID;
    
    function getDiakIgazolvanyId(uint _hanyadik) public view returns (uint)
    {
        return diakigazolvanyID[_hanyadik];
    }
    
    //functions (read/tranzaction)
    //transaction
    constructor() public{
        isActiveOktatas = true;
        szekekszama = -10;
        csakpozitivSzekekSzama = 10;
        hallgatokSzama = 24;
        tantargyNeve = "Blockchain programozas";
        targyadminisztrator = msg.sender; //az a cím ami az egészet elkezdte
        tipus = OktatasTipusa.Online;
        
        diakigazolvanyID.push(111);
        diakigazolvanyID.push(222);
        diakigazolvanyID.push(333);
    }
    
    function sumDiakigazolvanyId() public view returns (uint)
    {
        uint sum = 0;
        for(uint i = 0; i<diakigazolvanyID.length; i++)
        {
            sum += diakigazolvanyID[i];
        }
        return sum;
    }
    
    function setOktatasTipus(OktatasTipusa _ujjtipus) public {
        tipus = _ujjtipus;
    }
    
    function setToTantermi() public
    {
        tipus = OktatasTipusa.Tantermi;
    }
    
    function changeTargyNev(string calldata _ujNev) public //calldata -> paraméterátadás
    {
        string memory megUjNev = "Halado Blockchain";
        tantargyNeve = megUjNev;
    }
    
    function beiratas(uint _hanyhallgatoLegyen) public
    {
        if(_hanyhallgatoLegyen < 5){
            uint belsoValtozo = _hanyhallgatoLegyen + 1;
            hallgatokSzama += belsoValtozo;
        }
    }
    
    //read functions - amikor csak olvasunk a  láncról, ezek gyorsabbak, kisebb költségűek
    //ha ublic másik smart contractból is lekérhető
    function hallgatokSzekekEsTablakSzama(uint _tabla) public view returns (uint _azOsszeg, uint _tablaMegEgy)
    {
        //return _tabla + csakpozitivSzekekSzama + hallgatokSzama;
        _tabla + csakpozitivSzekekSzama + hallgatokSzama;
        _tablaMegEgy = _tabla + 1;
    }
    
}

