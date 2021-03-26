# Bevezetés a blokkláncprogramozásba

**Követelméynek:**
- 1 csoportos beadandó
- 1 ZH a félév végén
- előadásonként opcionális kis HF-k amikkel a ZH kiváltható (4 hetes átfutási idő)

**Ajánlott irodalom:**
- Bitcoin Standard - A központi bankok decentralizált alternatívája - Saifedean Ammous


## Vizsgakérdések:
- [smart contract]()

> **Bevezetés**
>
> Bitcoin és Ethereum protokollról lesz szó konkrétan, a blokkláncokat ezek mentén nézzük meg. [`Solidity`](https://docs.soliditylang.org/en/v0.7.4/)-ben lesz a programozás. A cél [dApp](https://medium.com/@valhallavet/how-to-build-a-dapp-on-vechain-initial-steps-9a3e35c876f2) technológia használatával lefejlesztése.
>
> Ez egy technológiai szemszögből vett kurzus, [nem fogunk a bitcoin árfolyammal](https://www.coinbase.com/price/bitcoin) foglalkozni, az [mások](https://cryptofalka.hu/) dolga. A [centralizált kriptovalutákkal](https://en.wikipedia.org/wiki/Central_bank_digital_currency) sem fogunk foglalkozni. És a [Bitcoin gazdasági vonzataival sem foglalkozunk](https://www.researchgate.net/publication/340439882_Bitcoin_digitalis_szemfenyvesztes_vagy_a_jovo_valutaja. 
>
> **Ajánlott irodalom:**
>
> - [Mastering Bitcoin 2. kiadás](https://github.com/bitcoinbook/bitcoinbook)
>   - [magyarul 1. kaidás](https://bitcoinbook.info/wp-content/translations/hu/book.pdf), [fájl fletöltve ebbe a repoba](https://github.com/gabboraron/bevezetes_a_blokklancprogramoasba/blob/main/bitcoin_fejlesztoknek.pdf)
>   - https://www.oreilly.com/library/view/mastering-bitcoin/9781491902639/ch08.html
> - [Mastering Ethereum](https://github.com/ethereumbook/ethereumbook)
> - [egyéb](https://openoms.gitbook.io/bitcoinmagyarul/programozas)
> - grafikák: https://cryptographics.info/
> - https://academy.binance.com/en
>
> **Fejlesztő környezetek**
> - [remix](http://remix.ethereum.org/#optimize=false&runs=200&evmVersion=null)
> - [metamask](https://metamask.io/)
> - bitcoin wallet test networkel
> - [truffle](https://www.trufflesuite.com/)
> - [ganache](https://www.trufflesuite.com/ganache)
> - nodeJS

## EA1
> Megbízható adat közlési protokoll a blokklánc technológia, tehát "csak" biztonságos adatközvetítést végez az interneten. 
>
> *Use Case példák:*
> - A valóságban ha pénzt utalunk a bankon át akkor az így menne: `én bankom` -> `EU szintű bank`-> `Világbank` -> `Ázsiai bank` -> helyi, `Kuala Lumpuri bank`
> - Pénzváltás: `200 HUF` -> `100 HUF` + `100 HUF` feloszása
> 
> Erre megoldás a decentralizált, **elosztott főkönyv**. Ez a technológia akkor is működhet, ha maga a kriptovaluta már nem létezik majd, hiszen a streaming szolgáltatók is technológiailag a torrenten alapszanak.
> - a blokklánc nem új technológia, csak régi technológiák új fajta összegyúrása, *distrupting innovation*
> 
> *HF:* 15 angol szakmai kifejezés magyar fordítása, pl *distrupting innovation* (pl: ford T model, személyi számítógép, wikipedia, okostelefon), 5let: *felforgató újítás*, *infrastructure inversion*, *open permissionless network*, *[distributed ledger technology](https://searchcio.techtarget.com/definition/distributed-ledger#:~:text=Distributed%20ledger%20technology%20(DLT)%20is,data%20store%20or%20administration%20functionality.)*, assignment, milestone, decentralized finance
> 
> A [decentralized finance](https://en.wikipedia.org/wiki/Decentralized_finance) egy nem teljesen szabályzott, de működő banki módszert visz fel a kripto technológiákra.
>
> A nyílvános blokklánc azt jelenti, hogy minden egyes tranzakció látható, pl: https://www.blockchain.com/explorer itt minden bitcoin tranzakció látható, [amik sázma állandóan nő](https://www.blockchain.com/charts/n-transactions-total). Ez az, amiből tudhatjuk, hogy ez a technológia a technológiai ciklusában hol tart. Ez a kriptovalutákat tekintve az első állomás abitcoin, a msáodik az ethereum, a harmadik pedig azok a felületek amikkel ez kezelhető, [Distributed ledger](https://searchcio.techtarget.com/definition/distributed-ledger#:~:text=Distributed%20ledger%20technology%20(DLT)%20is,data%20store%20or%20administration%20functionality.). 
> 
### Bitcoin története röviden
- **2008 előtt** már léteztek hasonló megoldások [DigiCash](https://en.wikipedia.org/wiki/DigiCash), [HashCash](http://www.hashcash.org/)
- **2008**-ban Satoshi Nakamoto szerző megírja a [bitcoin whitepapert](https://bitcoin.org/bitcoin.pdf).
  - a teszt sznten bányászott bitcoinok azóta sem mozogtak és nem változtak
  - gyakran vele hozzák párhuzamba: https://en.wikipedia.org/wiki/Nick_Szabo
- **2009 január 3**.-án Nakamoto megírta az első bitcoin klienst: https://github.com/bitcoin/bitcoin
- **2009**-ben [genezis blokk](https://en.bitcoin.it/wiki/Genesis_block)-ban benne van a januári NY Times főcím is, amiben az aktuális gazdasági csődről írtak
- **2010** bitcoin bányászás beindul GPU-n
  - beindul a az első bitcoin váltó: 1US dolláról 1Bitcoinba
  - első jelentős bugra bukkannak a bitcoin rendszerben
  - bitcoin pizza nap: [május 22](https://academy.bit2me.com/en/what-is-bitcoin-pizza-day/#:~:text=Since%20then%20every%20May%2022,for%2010%2C000%20BTC%20in%202010.)
  - [Laszlo Hanyecz](https://en.bitcoin.it/wiki/Laszlo_Hanyecz) -> [bitcoin pizza index](https://bitcoinpizzaindex.net/)
- **2012** első bitcoin conferencia
  - [Bitcon foundation](https://en.wikipedia.org/wiki/Bitcoin_Foundation)
  - [repple.it](https://en.wikipedia.org/wiki/Ripple_(payment_protocol)) ami bankok között akarta megalkotni a kriptovaluta megosztó hálózatot
- **2013** lezárják a dark weben a [silk road](https://en.wikipedia.org/wiki/Silk_Road_(marketplace))ot. 
- **2014** [Mt.Gox csődbement](https://www.portfolio.hu/uzlet/20140303/csodbe-ment-az-egykori-legnagyobb-bitcoin-tozsde-196037) a legelső nagy bitcoin - fiat pénz váltó
   - [Ethereum foundation indulása](https://www.bitcoinsuisse.com/staking/ethereum-2), [Vitalik Buterin](https://www.bitcoinbazis.hu/utmutato/ethereum-letrehozo-vitalik-buterin/) alapításával
- **2015** [hyperledger fabric](https://www.hyperledger.org/use/fabric) egy konzorciumi felhasználása a kriptovalutáknak
- **2015-2018** [Inition Coin Of rings hype](https://www.forbes.com/sites/forbescommunicationscouncil/2019/01/02/marketing-was-a-driving-force-in-the-ico-hype-and-crypto-crash-and-may-lead-its-rebirth/), ami azt vázolta, hogy létrehoznak egy blokklánc tokent, ami akár egy ötleet fed és eladjuk sok pénzért amivel a projektet lehet pénzelni. Ez azért ment csődbe, mert sokan visszaéltek vele, hogy eladták a tokent de nem volt mögötte valós projekt. Ezt később erősen leszabályozták, ami akár a céges részesedést is jelntette.
- **2018** nagy kriptovaluta válság

#### HF:
Válassz egy eseményt a bitcoin/blokkánc történetéből és mutasd be 10 sorban. Mi történt, miért izgalmas ez, hogyan befolyásolta a blokklánc adaptációt. 

## EA2
### a tranzakció menete:
> egy P2P hálózaton megy át az üzenet. A hálózat akár több ezer csomópontú is, pl ether: https://ethstats.net/. A hálózaton dől el, hogy érvényes-e egy tranzakció. A hálózat nem mondhatja félig azt, hogy igaz félig azt, hogy hamis, mert akkor forkolás van, és a végső igazságállítás nem működik. A forkolás után a hálózat előbb utóbb konszenzusra jut és mindegyik csomópont azt mondja, hogy érvényes vagy azt, hogy érvénytelen.
> 
> Ha a tranzakci érvényes, akkor letároljuk egy adsatbázisban. Az adattbázis legalább az összes érvényes tranzakciót tartalmazza, de tarltamazhatja az érvényteleneket is. Az adatbázis mindne egyes csomóponton ott van, tehát a hálózat ennek segítségével jut konszenzusra. 

#### tranzakciós szemantika
> a bitcoin csk A-ból B-be tud küldeni tranzakciót, de, ha kiegészítjük feltétlekkel, 
> 
> pl: *küldjünk A-ból B-be, ha 4 emberből 3 támogatja és Március 3 után vagyunk.* vagy *a tranzakció az, hogy egy orvos felír egy receptet egy betegnek és a hitelesítő hálózat a kórházak rendszere*, vagy *a szállodák szobái a tokenek (coinok) és a transzfer, hogy egyik embertől a másiknak adhatjuk, így a x. szoba holnapi foglalása a token*
> 
> A **smart-contract** egy olyan tranzakció ami mögé egy üzleti logika kerül, tehát nem csak valutát küldünk, hanem valami mást is.
> 
> A bitcoinnak és a litecoinnak nem igazán van tranzakciós szemantikája, mert ugyan technikailag képes rá, de nem szokás használni az összetettsége miatt, inkább csak coin küldésére szokás használni
> 
> Ripple IOU (I own you) szerződéseket ad, ahol a két fél küzütt a tartozást tartja számon, és abból számolja.
> 
> A tranzakció programozási nyelev nem egy triviális kérdés, mert ha turing teljes a nyelv akkor végtleen ciklus is lehet benne ami pl egy IOU rendszerben kiszámíthatatlan végeredményt ad.

#### HF: 
egy egyetem blokkláncosításának alapelvei a fentiek alapján.

#### tranzakciós struktúra
![blokklánc](https://miro.medium.com/max/1452/1*Wc-YRBsmZcjNsMBSqyYtuA.png)

> Ez az a tranzakciós lista ami minden peerhez be van másolva.
> 
> Egy blokkba a tranzakciók vannak lementve. A blokkok egymás után vannak, és minden tranzakció minden egyes blokkba belekerül. Az első blokkban azok a tranzakciók amik reggel, a második amik délben jöttek stb, és ezek alkotják a blokkláncot.
> 
> a blokkoknak egy hash függvénnyel generált újlenyomatát elkészítjük és azt tesszük a fejlécébe a következő blokknak. A következő blokkba már az eddiggi hash értéket és az összes új tranzakciót hasheljük össze, és ezzel az értékkel fog kezdődni a következő blokk.
> 
> Ahhoz, hogy ne lehessen azt mondani, hogy valaki megtette a tranzakciót egy proof of workot kell felmutatnia. Ez azt is biztosítja, hogya blokkláncból nem lehet törölni!
> 
> Az egész működhet máshogy is, pl [iota](https://www.iota.org/), de ezt már nem blokkláncnak hanem elosztott főkönyvi áhlónak nevezzük, ezt mutatja be a tangle: https://explorer.iota.org/mainnet/visualizer/
> 
> A másik megoldás a pletykáló hálózatok, a hashgráf, ami másképp de ugynaezt oldja meg, így néz ki:
> ![pletykáló hálózat](https://1.bp.blogspot.com/-DpZwufJmu_Y/Wh6lGuTNRmI/AAAAAAAABUU/0W2PLj5w-j4ql9RE8Otwk5DrB3UcgKOGQCLcBGAs/s1600/hashgraph%2B%25282%2529.gif)

#### tranzakciós rendszerek
> - szemi publikus: nyilvános, bárki indíthat tranzakciót, de a küldő nem ismert
> - konzorciumi rendszer: nem nyilvános, pl: [Hyperledger Fabric](https://www.hyperledger.org/use/fabric), a tranzakció végeredménye viszont nem titkosított, de az egész felügyelt.

#### network scpope - consortium
> a P2P hálózat ellekezője, ahol ismert szeretplők vannak a rendszerben, mindneki tudja hol futnak midnkei más csomópontjai, mindkei szavaz a másik blokkjára, tranzakciójára. Ehhez nem lehet úgy csatlakozni, ha csak te szeretnél, ide minden résztvevő engedélye kell
> - lehet nyilvános
> - lehet privát
> - lehet konzorciumi
>
> ![tranzakciós típusok](https://miro.medium.com/max/1156/1*pGQc5gy-T8VRQq57DjwG3A.png)
> 
> - bitcoin,. litecoin: pub, pub
> - nyilvános blokkláncra stmart contract: pub, consort
> - libra: consort, pub
> 
> *Saját, csak belső kripto értlemére példa*: bizánci hibatűrés: van egy szolgáltatási rendszer, amiből ha kiesik sozlgáltatás, mert meghackelték, akkor is sértetlen a szolgáltatás. Ehhez visoznt egy saját elosztott adatbázis alkalmasabb lehet

#### konszenzus algoritmus
**Fontos szempontok**
- hibatűrés
- bizánci hiba tűrése
- algoritmus hatékonysága
- tranzakciók feldolgozási száma/időegység

P2P hálózat esetén ([bitcoin](https://bitnodes.io/?The), [Ether](https://etherscan.io/nodetracker)) 

- **Quorum**: minimuum sázmú ember azonos vélmeényre jut
- **Nakamoto**: véletlenszerűen választunk bányászt aki dönt
- [**Proof of stake**](https://en.wikipedia.org/wiki/Proof_of_stake)

#### token alapú kriptogazdaság
- a tranzakciós díj attól függ, hogy mekkora a tranzakió (BTC: a fizikai méret, ETH: mennyi ideig futott a tranzakció)

A decentralizált hálózatban vannak emberek akik a tranzakciót kérik és a bányászok akik a tranzakciós díjat kapják - Azért nem lehet DDosolni a hálózatot, mert a rendszerbe beépített tranzakciós díj mértéke egyenesen arányos a támadás méretével, így a támadás kivitlezése nagyon drága. Mndezt egy centralizált rendszer, egy conzorciumio rendszer nem kell tartalmazza.

Minden nyilvános blokklánc projekt árazódik a tőzsdén: https://coinmarketcap.com/

#### Az eddigiek összehasonlítása
![comapare](https://www.prolitus.com/wp-content/uploads/2017/07/Ethereum-Vs.-Bitcoin-Which-is-Better-Cryptocurrency-1.jpg)
- Bitcoin: fentebb tárgyalva
- Ethereum: fentebb tárgyalva
- hyperledger
  - több nyelven kezelhető
  - nincsennek a csomópontok szétszórva
  - kimagasló telesítmény
  - alacsonyabb hibatűrés, mivel zárt
  - kriptoközgazdasági rendszere nincs, mivel adott cégek működésére van építve

#### Kriptovaluták összehasonlítása
- Binance Coin: egy átváltó kriptovaluta, pl: erre váált aki btcből ethba akar váltani
- Tether: egy stabil, centralizált, szingapúrból vezetett kriptovaluta, egy az gybe vált dollárba: 1usdt = 1usdollar, veszélyes lehet a a teljes piacra nézve
- Cardano: smart contractra képes 
- XRP (ripple): egy consortiumi blokklánc tokenje
- litecoin: bitcoin2, a btc protokolljára épül, és azt fejlesztik tovább
- chainlink: decentralizált oraculum, ennek a tokenje
- bitcoin cash: a btc egy forkja, ami más méretben dolgozik, de végülis a btc algoritmusán
- stellar
- usd Coin: szintén a dolárral áll paritásban
- dogecoin: egy trollkodásnak indult
- wrapped bitcoin: ether hálózaton smart contractba csomagolt bitcoin, aminek az az értelme, hogy bitcoinra alklamaz smart contractot amire meg az ether képes
- uniswap: etherre alkalmazott smart contreactban megvalósítanak alkalmazást, decentralizált exchange, aminek a tokenje külön árazódik
- EOS: nyilvános de centralizált hálózat smart contractokra, `C++`-ban programozható
- Cosmos: blokkláncok öszekötésére allalmas
- monero: a titkosítást tartja szem előtt
- tezos: általános blokklánc fejlesztési platform ahol smart contractok is működnek

**HF:** maiak alapján a tranzakciós szemantikák, smart contract, stb-t átgondolva milyne leheetőség lenne egy oktatási folymat blokkláncosítására? Mit érdmees átgonodlni, a hálózat nyiltságát infrastrukturálisan, tranzakciós szmepontból átgondolva, egy 10 soros öteltelés.

**Érdekes lehet még:**
- digitális euro https://www.ecb.europa.eu/euro/html/digitaleuro.en.html
- chainalysis: https://www.chainalysis.com/
- THE CRYPTO PESO: https://eosvenezuela.io/cryptopeso.html
- Decentralized finance: https://en.wikipedia.org/wiki/Decentralized_finance

## EA3
> **Ismétlés**
> - van egy nyilvános kulcsú kriptográfai amivel aláírunk egy tranzakciót
> - a trnzakció bármi lehet, valamilyen érték küldés (üzenet, vagy más)
> - egy hálózatra küldüjük a tranzakciót, a P2P hálózat konszenzusra jut
> - egy tranzakciós adatbázisba betesszük az egészet.

### ETH metamask wallet
https://metamask.io/ feltölthető közvetlen https://www.sendwyre.com/ -el
- egy digitális pénztárca, arra szolgál, hogy az ethereum  hálózattal komunikáljunk
- főleg ether tárolására és küldésére szolgál
- a legtöbb wallet web3 UX-en működik, ezért a végfelhasználóknak ez kényelmetlen lehet mert web2-höz szoktak
- amit a wallet tárol azok igazából titkos kulcsok
- egy walletben több kulcs is van, van egy alap alap, root, mnemonic kulcsból generálódnak a későbbi kulcsaim
- tehát ha a kulcsokat elhagyom/ellopják akkor elvesztem a tárolt pénzem
- minden egyes wallethez generálódik egy nyilvános és egy titkos kulcs. A nyilvános kulcs olyan mintha sázmlaszám lenne, ez az `Account` menüpont.
- a titkos kulcs az  `Account`-hoz tartozó fiókadatoknál megtekinthető

**Hálózatok:**
- ethereum main net: fő ether hálózat, ezen élesben történnek a tranzakciók
- ropsten test net: ez áll a legközelebb az ether működéséhez, és ezért érdemes ezen tesztelni, erre a [faucet](https://faucet.ropsten.be/) szolgál, ami ad teszt ethert.
- az ether [block chain explorere az etherscan](https://etherscan.io/) it lehet látni a tranzakciót és hogy azzal mi történik a blokkláncon
- pl: https://ropsten.etherscan.io/tx/0xae3db350dc133063d8c1b17c22f5aff107ae6ba6f1503293b555675875ca63d8
  - itt van egy `Transaction Hash` ami egy egyedi azonosító, itt minden adata a tranzakciónak egybe van hashelve
  - `Status`: mi történik a tranzakcióval
  - `Block`: hogy melyik blokkban an benne a tranzakció és a `lock Confirmations` ami azt jelzi hány megerősítés van a blokk után, minnél több annál valósínűbb, hogy elfogadható
  - `Timestamp`: ez egy körübelüli idő, mert a legtöbb blokklánc nem tartalmaz globális órát, maga a blokklánc az óra, így ezzel pontosan nem lehet számolni
  - `From` és `To` az hogy honnan hova küldték az összeget, a nyilvános kulcsok, maguk a címek kezdőértékei megadják, hogy melyik hálózaton mozognak: https://docs.metamask.io/guide/ethereum-provider.html#chain-ids
  - `tranzakciós díj` a tranzakció fizikai méretétől függ és nem a tranzakció értékétől függ!
  - tranzakciókor a tranzakció feldolgozása után a küldő nyilvános címén változik az állásé a pénztárca csak azt kérdezi le, nem változtat magán az értéken!

## EA4
- [defiicon](https://www.eventbrite.com/e/defiicon-the-defi-conference-tickets-133902246223)
- [European Blockchain Service Infrastructure (EBSI) Introduction](https://www.meetup.com/Hyperledger-Budapest/events/276348248/)
- [@blockchainbudapest](https://medium.com/@blockchainbudapest)

### Kriptográfia
> Titkosított üzenet küldés
> - steganográfia: üzenet elrejtése *(pl fizikailag elrejtjük, mondjuk mikrofilmet fülbevalóba)*
> - kriptográfa: üzenet kódolása *(karakterekt kódolunk valamilyen módszerrel)*
>   - cézár kód: https://cryptii.com/
> 
> szimetrikus kriptográfia: egy kulcs van, amivel kódolunk ésdekódolunk, előtte a kulcsban meg kell egyeznie a két félnek
> 
> asszimetrikus kriptográfia: két kulcsa van mindkét beszélgető félnek, egy nyilvános, és egy privát. Alice a szöveget Bob nyilvános kulcsával kódolja el, és azt Bob csak a saját, privát kulcsával tudja dekódolni Ez nem gyors folyamat, ezért ezt csak a szimetrikus kriptográfiához használt kulcs cseréez használják,
> 
> https://cryptoclub.org/

#### Digitális aláírás
> blokkláncon küldün egy szöveget, pl: *én küldök neked 10 érmét* akkor azt alá kell írni, úgy, hogy az más előtt is elfogadható legyen
> 
> Alice aláírása Alice és Bob között Alice nyilvános kulcsával ellenőrizhető.
> 
> ![nyilvános és titkos kulcs használata aláíráshoz](https://www.4point.com/content/dam/4Point/Blog%202017/pic%203_digital%20signature%20process_4Point.png)
> 
> **Hekkelhető-e?**
> 
> *Alice küld Bobnak 5 BTC ~ aláírva Alice által* szöveget átírjuk *Alice küld Evenek 5 BTC ~ aláírva Alice által* Erre megoldás az eredeti üzenet hashelése és a hashelt érték aláírása.

Ha van egy adattárház akkor az ott tárolt adatunkat hogyan titkosíthatjuk? A [Numerai](https://numer.ai/) használatával gépi tanulás algoritmusokat használhatunk úgy hogy közben az adatok maguk anonimok és titkosítottak maradnak. 

[Zero-knowledge proof](https://en.wikipedia.org/wiki/Zero-knowledge_proof) használatával finomhangulhatjuk a kriptovaluta biztonsági/titkossági részét.

Kérdés, hogy mennyit ér a a nagy biztosnág, ha közben magukat a kulcsokat el lehet lopni a személyektől.

#### Kriptovaluta
![blockchain](https://cryptographics.info/wp-content/uploads/2018/01/resized/1920/365/65/0/sharpen/0/0/Running-the-network.png)

##### Kulcsok és címek
- bármit teszünk a blokkláncon azt a kulcsokkal tesszük, mert ahhoz vannak hozzárendelve az értékek.
- A rendszerben a "személyhez" ~ kulcshoz társítjuk az értékeket *, pl XXX - 5 ETH | XYZ - 3 ETH*. Egy címhez tartozik egy nyilvános és egy privát kulcs. Ezekkel írjuk alá a tranzakciókat. Ennek a felépítése más mint egy szokásos szolgáltatásnak, mert itt kulcsokat kezelünk.
- ha töröljük a pénztárcát, backup nélkül akkor elvesztjük a pénzt
- ha a kulcsokat valaki ellopja akkor sizntén elveszett a pénz

Amikor nyilvános kulcsú kriptográfiáróll van szó akkor a nyilvános kulcsot generáljuk. Ha a generátor nem elég jó *(pl egy lambda fv)* akkor ezek megjósolható kulcsok. Így a kulcsok száma redukálható, tehát könyebben hackelhető a kulcs maga. 

> - Maga a titkos kulcs egy 256 bites titkos random szám.
> - ha olyan kulcsot generálunk amire tudunk emlékezni az a [brain wallet](https://en.bitcoin.it/wiki/Brainwallet#:~:text=A%20brainwallet%20refers%20to%20the,by%20memorizing%20a%20seed%20phrase.&text=To%20create%20a%20brainwallet%2C%20use,like%20Electrum%2C%20Armory%20and%20Mycelium.) ami bizonyítottan nem biztonságos.
> - [ECC](https://avinetworks.com/glossary/elliptic-curve-cryptography/#:~:text=Elliptic%20Curve%20Cryptography%20(ECC)%20is,Adleman%20(RSA)%20cryptographic%20algorithm.): elliptikus görbén van egy fix pontom, ez előrehaladott, *A*-pont, van egy titkos kulcsom, *k*, és a *nyilvános kulcs: `k*a`*
>   - *két pont összeadása:* húzok egy egyenest a görbére aminek a görbével vett metszéspontjai szimetrikusan értelmezettek
>   - *két pont szorzása:* ha van egy pontom a görbén (*A*) akkor a *2A* az a pont *x* tengelyre való tükrözésével kapjuk meg.
> ![ecc vázlat](https://avinetworks.com/wp-content/uploads/2020/02/elliptic-curve-cryptography-diagram.png) ![ecc műveletek](https://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/ECClines.svg/1920px-ECClines.svg.png)
> 
> ha van egy privát kulcsom amiből előáll a nyilvános kulcs akkor a generálás maga gyorsan kell történjen, a visszafejtésnek lassúnak kell lennie, *nem gondolva a quantum számítógépekre*
> 
> Egy BTC címnél van checksum, tehát ha nem mindne lehetséges cím (*elírás*) lehet cím, ésa cím Base58-ra van alakítva. Minden egyes tranzakcióra új kulcspár jön létre! Tehát, a coinhoz tartozik a kulcspár. Tehát, a titkosságot és a quantumrezisztenciát növelve, amikor költök BTC-t akkor az utalás után egy újonnan generált cím jön létre amit visszaad a rendszer. Anonimabb mint az ETH.
> 
> ETH-ban egy tetszőleges cím egy lehetséges cím, csak nincs hozzá titkos kulcsod. ETH-ban fiók van amihhez tartozik egy-egy kulcspár és a fiókhoz az utalások.

### Walletek
> Ezek gyakorlatilag digitális kulcstartók, mert kulcsokat tárolunk bennük. BTC-nél minden tranzakciónál, ETH-nál meg a fiókhoz. 
> 
> A **wallet as a service**, *pl web wallet* benn van valamilyen céges környezetben, webes felületen férhetsz hozzá, de ha gond vana céges adattárházban az nálad is jelentkezik.
>
> Az **app és dekstop wallet**eknél a fájlokban tárolódik az információ, ha nem készül backup és tönkremegy/ellopják az eszköz(t) akkor a kulcsok is elvesznek!
>
> **Hardware wallet**, egy [usbs eszköz](https://www.ledger.com/) ami aláírja a tranzakcióinkat, a desktop programon keresztül.
> 
> **paper wallet** a privátból egy publikus kulcs generálódik amiből egy címet generálok. Ezt a címet adom meg, amikor offline vagyok a hálózaton, de a címre lehet utalni, és a hozzá tartozó kulcsokkal lehet  hozzáférni a rajta levő coinhoz. 
> ![paper wallet](https://upload.wikimedia.org/wikipedia/commons/d/db/Bitcoin_paper_wallet_generated_at_bitaddress.jpg) 
> 
> generátor: https://bitcoinpaperwallet.com/bitcoinpaperwallet/generate-wallet.html
> - generárlunk egy kulcsot
> - átmásoljuk olyan gépre amit még nem ért internet
> - és azon generáljuk át
> 
> **determinisztikus wallet** egy seedből generálódnak a kulcsok, a seed maga véletlenszerű, de azt visoznt le kell menteni, ahhoz, hogy további kulcsokat gneeráljunk. A véletlen kulcsból való generálás mindig determinisztikus lesz.
> 
> [**hd wallet**](https://medium.com/@harshagoli/hd-wallets-explained-from-high-level-to-nuts-and-bolts-9a41545f5b0) - hierarchikus és determinisztikus, amikor egy seed kulcsot használunk, de az ezekből generált determinisztikus kulcsokból újabb kulcspárokat generálunk és azt használjuk. Ezt akár még többször ismételhetjük. A közbenső kulcsokat nem használjuk aláírásra, csak átmenetre. Ez cégek számára is alkalmas lehet.   
> 
> ![hd w](https://miro.medium.com/max/3000/1*wa3Wknzgr6nS8ZrQQf2N6g.png)

## EA5
**utalás fajták**

Két féle kriptovaluta van, az egyik a coin rendszer, mint a bitcoin, hogy gyakorlatilag érméket osztunk fel és/vagy küldözgetünk, nem is feltétlen emberek között, de tárcák között. Mindkét esemény egy-egy tranzakció. A tranzakciót mindig az láírásunkkal hitelesítjük, így a bitcoinok felosztását is hitelesítenünk kell.

Másik irányból viszont van egy tárcám amiben van egy két bitcoinos érme és egy három bitcoinos érme, ami ugyanzon a pénztárcán van, de külön címen. Pl, 2BTC az egyik címen, 3 a másikon és összevonjuk egy harmadik címre, ahol 5 BTC lesz, de mindegyikhez lesz külön egy-egy titkos kulcs.

Hasonló lehet az is ha pl egyik címen 1BTC-t másikon 4 BTC-t vonnánk össze egy címre 2 BTC-t, másik címre 3 BTC-t.

UTxO rendszer segíti a BTC-t hogy anonimitást adjon, hogy amikor maradék pénz kereletkezne az utalásból azt egy harmadik címre küldi, hogy kevésbé legyen visszakereshető

> **Tranzakciós díj**
> 
>Pl: van 2 BT amit el kaarunk költeni egy 0.9 BTC-be és egy 1BTC-sem akkor a 0.1BTC a tranzakciós díj, amit a bányász kap.
> 
> A tranzakció végén akár 0 is lehet a tranzakciós díj, de annak meghatározása a tranzakciót megkezdő félnél van, ő határozza meg, erre a tárcák javaslatokat adnak.
> 
> A bányász látja, hogy mekkora a tranzakcíó díja, és a nagyobb díjakkal kezdik a blokkok feltöltését, majd az alacsonyabbak kezdenek, és végül, ha van hely akár a 0 díjú is átmehet a hálózaton
> 
> számolása: `sum(input)-sum(output)`
> 
> ![tranzakciós gráf](https://dist.neo4j.com/wp-content/uploads/20180109030108/neo4j-bitcoin.png)
>
> A tranzakciós díj függ tranzakció méretétől, amit bytera konvertálunk és ahhoz viszonyítva adjuk meg a tranzakciós díjat.
> 
> A tranzakciós díj nagysága alapján hamarabb vagy később kerül feldolgozásra a tranzakció maga. A tranzakcisó díjat a tranzakciós statisztikák alapján érdemes megadni, hogy gyorsabb legyen a tranzakió. https://bitinfocharts.com/comparison/bitcoin-transactionfees.html

Minden egyes tranzakcís coin maga az leőtő tranzakció maradéka, ez maga az [UTXO - Unspent transaction output](https://en.wikipedia.org/wiki/Unspent_transaction_output)

![raw transaction](https://miro.medium.com/max/1250/1*oFl5V471MunuwG2Bv_-Eyg.png)

### BTC és multicoin walletek
pl: [bitpay](https://github.com/bitpay/wallet)

Minden egyes csomópontnak van egy memory poolja amibe az érvényes de még fel nem dolgozott tranzakciók jönnek. Ez az unconformed balance.

BTC testnet faucet: https://testnet-faucet.mempool.co/

A titkos kulcs 256 bit abból lesz a nyilvános kulcs és abból a cím amit még el is hashelünk, így bármelyik cím érvényes, akkor is ha nem generáljuk le!

van oylan wallet ami a blokk headereket is tárol, van amelyik a blokklánc egy részét, van ami egyiket sem belőle.

### Script - bitcoin programozás
> irodalmak: 
> - https://www.bitcoin-studio.com/assets/education/bitcoin_script_bitcoin-studio.pdf
> - https://davidederosa.com/basic-blockchain-programming/bitcoin-script-language-part-two/
> - https://medium.com/@ismailakkila/my-notes-on-bitcoin-transactions-part-1-a4edc871f705
> - https://blockgeeks.com/guides/best-bitcoin-script-guide/
>
> A nyelvről:
> - fortran szerű
> - nem turing teljes
> - stack alapú
>
> ![script program](https://miro.medium.com/max/875/1*NQvOvhIHxYGu5tJRGBxehg.png)
>
> A tranzakcióhoz tartozik egy `lock` és egy `unlock` script, amiben a tranzakció aláírására várunk és az aláírás után továbblpünk. Az `unlock` gyakorlatilag a címzett aláírását és a nyilvános kulcsát szedi egybe.
>
> - **p2pkh**: https://learnmeabitcoin.com/technical/p2pkh
> - **P2PA**: kevésbé quantumbiztonságos ezért már nincs használatban
>
> #### Multisignature - `OP_CHECKMULTISIG`
> figyeli a küldő és fogadó autorizációját
> 
> #### data recording
> A BTC alpvetően nem erre való, de ha szeretnénk valamit biztonságosan küldeni akkor arra van lehetőség, nem túl nagy méretekben, ez nem egy smart contract rendszer, tehát erre nehéz alapozni!
>
> #### timelock
> Megadható, hogy mikortól kezdődjön a tranzakció maga.

### bitcoin P2P hálózat
https://bitnodes.io/

**szerepkörök**
- vannak olyan csomópontok amik a teljes blokkláncot tárolják
- van ami bányászik
- van ami csak routing csomópont ami érkező tranzakciókat és blokkokat irányítanak
- full node: tárolja a blokkláncot és routingot is végez

![btc protocols](https://makersu.gitbooks.io/mastering-bitcoin-core/content/assets/mbc2_0803.png)

https://makersu.gitbooks.io/mastering-bitcoin-core/content/the-bitcoin-network.html

## EA 6
**blokk felépítése:**
- header, metaadaatok:
  - verziószám
  - előző blokk hash értéke
- tranzakciók listája
  - minden blokk legelső tranzakciója: Coinbase tranzakció
  - több ezer tranzakció is lehet

![blokk séma](https://miro.medium.com/max/688/1*mqk4wCjPpvuopJR1ul5-_w.png)

Az egész blokkot egybe hasheljük, `sha256`-tal aminek értékét a következő blokk fejlécébée tesz. A tranzakciók alapja a genezis block mai hard kódolva van a kliensekbe. Az első blokktól való távolság a block height.

### merkle tree
> bináris, párosssával hashelte fa
> - https://www.investopedia.com/terms/m/merkle-tree.asp
> - https://www.tutorialspoint.com/blockchain/blockchain_merkle_tree.htm
> 
> 
> Tranzakció párokat hashelünk össze, és páronként keletkezik egy-egy `sha256` hash érték, ezeket a hash értékéket szintén páronként hasheljük, egészen addig amíg egy gyökeret kapunk. Ez a route hash érték, ami a block headewrben van benne, amit a teljes blokk értékével elhashelünk.
> 
> ![merkel tree](https://www.tutorialspoint.com/blockchain/images/merkle_tree.jpg)
> 
> Ezek után, hogy egy `T4` tranzakció benne van a blockchainben, akkor a párjának a tranzakcióját, a pár hash párjának az rétékét és a közös gyerekük hash értékének a párját kell megadnunk. Ez egy `O(log n)` műveletígényű algoritmus.
> 
> ![blokklánc](https://www.tutorialspoint.com/blockchain/images/root_hash.jpg)
> 
>
> *Block felépítése:*
>
> | Size         | Field         | Description  |
> | ------------ |:-------------:| ------------:|
> | 4 bytes      | Block Size |The size of the block, in bytes, following this field|
> | 80 bytes     | Block Header      |  Several fields form the block header |
> | 1-9 bytes (VarInt) | Transaction Counter     |    How many transactions follow |
> | Variable | Transactions     |    The transactions recorded in this block |
> 
> Ez az egész a P2P hálózaton minden peerhez lemásolódik! Ettől pseudonym rendszer.
> 
> bővebben: [Mastering Bitcoin](https://www.oreilly.com/library/view/mastering-bitcoin/9781491902639/ch07.html#:~:text=Structure%20of%20a%20Block&text=The%20block%20is%20made%20of,contains%20more%20than%20500%20transactions.)

### Bányászás
Bitcoin monetáris politikája: hány darab bitcoin van forgásban és hosszútávon hány bitcoin kerül be a rendszerbe. Ez az algoritmusban hard kódolva rögzítve van.

![bitcoin monetáris alakulása](https://static.coindesk.com/wp-content/uploads/2020/03/bitcoin-supply-and-subsidy.png)

- éves szintén lesz egyre kevesebb bitcoin, majd 2040 körül beáll a rendszer egyensúlyba, amiben a **max érték 21 000 000 BTC**
- minden tranzakció alapja a `coinbase` tranzakció, ez minden tranzakcióban van, azaz minden egyes blokk első tranzakciója maga az, hogy hány btc-t állít elő. Átlag 10 percenként alakul ki egy blokk jelenleg, 10 000 tranzakcinónként alakul, hogy hány btc kerül ki a tranzakcióból. A legelején 50 BTC került ki, de 210 000 blokkonként ez feleződik, így annál keesebb ekrül ki belőle. A bányász az újonnan megkreált BTC-t + a tranzakciós díjak összegét is ezen a `coinbase` tranzakción keresztül kapja meg. 2140-től nem lesz több coin, ezért a bányászok már csak a tranzakciós díjakkal lesznek jutalmazva.
- A bitcoin-t elégetni úgy lehet, hogy titkos kulcs nélküli címre megy a tranzakció. A titkos kulcs el is veszhet, vagy akár sosem létezett.
- egy csomópont számítási kapacitása határozza meg, hogy mennyi esélye van megnyerni valakinek a játékot, az növeli az esélyeit, de attól még véletlenszerű marad a döntés, hogy melyik bányász lesz kiválasztva a blokk bányászásáért járó jutalomért, ami a genezis blokk által ígért jutalom coin értéke és a blokk tranzakcióinak tranzakciódíjainak összege.

**cryptográfiai játék**
- a blokk nonce értékéből sé a blokk sha 256-os hash értékénél kisebb számot kell megadnunk. A bizonyos szám, a nehézség maga. Ezek szerint a `nonce` paramétert a blokk hash ével összehashelve ennél a nehézségnél kisebb értéket kell megadnnunk. Ezt lehet tetszőleges nehézséggel megadni, mert a `bizonyos szám` az szabadon megadható.
- a `nehézség` igazából a hash érték legelején lévő 0 számjegyek darabszámát adja meg.
- a nehézség egy növekvő érték, ami a kezdő nehézség és az azóta elért nehézség függvénye: `init target/actual_target`

![nehézség](https://cryptographics.info/wp-content/uploads/2018/01/resized/1224/0/65/0/0/0/Proof-of-Work.png?1616162655363)

Ha nő, a bányászási kapacitás azt a rendszer érzékeli, és ahhoz igazítja a bányászás sebességét, ezt a nehézség növelésével vagy csökkentésével lehet elérni. a `Hash rate` a teljes rendszer mérő száma, ami a teljes rendszerre mondja meg, hogy kb ány hash érétket kell kibányászni amíg egy lehetséges jó értéket kapunk. Ez az értéke egy-egy bányász gépeknek is van, ez alapján jósolható meg, hogy mekkora esélye van nyerni a játékban.

> **Tehát a bányászás maga az a folymat amikor a `nonce` értéket 0 -tól addig tekerjük, amíg elérjük, hogy az adattal vett hash értéke kevesebb `0`-val kezdődjön mint a megadott nehézség.**

kipróbálható: https://andersbrownworth.com/blockchain/block

Abban az esetben, ha a bányászok többen egyszerre ugyanarra jutnak, akkor elkezdik a hálózaton terjeszteni az eredményüket, és ez után, azt tartjuk érvényesnek amelyik lánc hosszabb lesz: 

![kezdet](https://www.oreilly.com/library/view/mastering-bitcoin/9781491902639/images/msbt_0803.png.jpg)![blokkba szervezés](https://www.oreilly.com/library/view/mastering-bitcoin/9781491902639/images/msbt_0804.png)![lánc növelés](https://www.oreilly.com/library/view/mastering-bitcoin/9781491902639/images/msbt_0805.png.jpg)![elfogadá](https://www.oreilly.com/library/view/mastering-bitcoin/9781491902639/images/msbt_0806.png)

> Ezért a nagy hátránya a rendszernek az energia ígénye, hiszen a szükséges többszörösét kell kiszámolja, ez a rendszer önigaziolása és a [sybil](https://academy.binance.com/en/articles/sybil-attacks-explained) támadás elleni védelem is.
> 
> ![sybil attack](https://image.slidesharecdn.com/presentationkishorbench-181117174656/95/classification-of-blockchain-vulnerability-6-638.jpg?cb=1546601507)
> 
> Erre lehet megoldás a proof of stake:
> 
> ![proof of work vs stake](https://static.blockgeeks.com/wp-content/uploads/2019/05/proofofworkvsproofofstake-1.jpg)
>
> A double spending hackelés ellen viszont csak a hálózat mérete véd. Azaz, ha a hálózat  számítási kapacitásának 51%-val egyenértékű sázmítással elkezdünk hamis láncot beadni.
> 
> ![double spending](https://cdn.publish0x.com/prod/fs/images/9833e1dbb461a1cb66f20f50f3c0f0ccdfe6929fb9803951b4a9911c7ad1378e.png)
> 

### Forkolás
#### soft fork
a hálózat szoftverfrissíése esetén, ha nem a teljes hálózat frissül és a szoft lehetővé teszi, hogy backward kompatibilis legyen, akkor a régiből az újba van átjárás, fordítva viszont nem, mert a régi hálózat nem tudja mit kap, és érvénytelen blokknak kezeli.
#### hard fork
ha nem kompatbilis módon updatelünk akkor két külön hálózat keletkezik, ahol végleges a szétválás.

![bitcoin forkok](https://i.redd.it/1pvmr98w5x041.png)

## EA 7 - ethereium
https://ethereum.org/hu/

> Ethereumot üzleti logikákra találták ki. Biztonság szemponjából rosszabb mint a bitcoin. 2013-ban Vitalik Buterin alkotta. Az alap elv, hogy minnél több, különböző coin/token/platformnak tudjon alapot adni. Ez úgy néz ki, hogy az ether az alap token, vagy külső token van rámappelve az etherre, vagy fordítva. Ezzel szemben, pl a privacy coinoknál *(pl: monero, zcash)* tlejesen saját minden, a coin, a token, az algoritmus.
> 
> *pl:*
> 
> - litecoin - saját blockchain, saját crypto
> - BCH - saját blockchain, saját crypto
> - nightfall - ETH fölött próbál privacyt növelni
> 
> - egy konstans kulcs generál egy címet, vagy mauálisan hoz létre, de nincs minden tranzakció mögé új kulcs rendelve.
> - teljesítménye jobb mint a bitcoiné
> - proof of stake a bányászoknak fix juttatást ad, de a bányászok letétet tesznek ezért
> - stablabb kriptoközgazdaság, minden amit a btc tud azt átvették, de még az eth alapú tokeneket is meg lehet valósítani ezért komplexebb
> - kiterjesztett programozási nyelv, ohgy saját smart contractot vagy saját coint is írjunk akár
> - EVM: Ethereum Virtual Machine - Truing tlejes nyelv, ciklussal, mindennel

### Blokk felépítése
```
Header
--------
tranzakciók fája
---------
state
v1 változó - e1 érék
v2 változó - e2 érték
...        - ....
```
A `state` változóknál bármi lehet áltozó, lehet az is, hogy a számlán változik az érték, vagy akár az is, hogy mondjuk x hallgató felveszi y tárgyat. Logikailag minden blokkláncban korábbi state változó benne van a blokkban. A korábbi blokklánc állapotok a `world state`-ben vannak tárolva.

![state válátozás ethereumon](https://www.anyblockanalytics.com/wp-content/uploads/2019/11/Iniciate-a-new-block-header-on-the-blockchain.png)

A tranzakciók gyakorlatilag ezeknek a változóknak az állapotváltozásaival valósulnak meg. A válzotók maguk a címek lehetnek. Ez a teljes változás a teljes P2P hálózaton tükrözve van.

![eth tranzkció](https://coingeek.com/wp-content/uploads/2020/10/transaction.jpg)

**A smart contract Wei-ben számol, azt konvertálja ETH-ba!**

![konvetálás](https://i.stack.imgur.com/EnoDw.png)

### Monetáris politika
> Folyamatos 5% inflációval kezdték, azóta lement 3%-ra, ezt beépítve változtathatják minden hard forknál. Mivel itt a smart programozás mögé teszi csak jutalomként az ETH-t ezért a valódi érték nem az ETH hanem az amit képvisel mögötte.
> 
> ![btc vs eth](https://image.slidesharecdn.com/etclondonevent-161214091442/95/ethereum-classic-and-crypto-monetary-policy-london-event-13-638.jpg?cb=1481706920)
> 
> ![két fél account](https://miro.medium.com/max/2632/1*59oJIrRDZeOXu8CY_MvEtw.png) 
> A `smart contract account`önmagában semmit nem tud csinálni, de a walletben tárolt `externally owned account` tud indítani tranzakciókat a smart contractból, mivel csak ott vannak titkos kulcsok, de ETH tároláson kívűl semmit nem tud tárolni, tehát minden tranzakció egy `externally owned account`ból kell induljon! 

### EVM - Ethereum Virtual Machine
> minen ami smart contract az egy ilyen művelet.
> 
![stackmachine](https://miro.medium.com/max/2048/0*BI4W4KXgTHgbCVRm.png)

Elterjedt programozási nyelvek amelyeket átfordít a compiler az [Ethereum yellow paper](https://ethereum.github.io/yellowpaper/paper.pdf)ben bemutatott utasításkészletre:
- Solidity
- Serpent
- Vyper
