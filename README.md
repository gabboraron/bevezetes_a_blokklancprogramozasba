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
> - [Mastering Ethereum](https://github.com/ethereumbook/ethereumbook)
> [egyéb](https://openoms.gitbook.io/bitcoinmagyarul/programozas)
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
> *HF:* 15 angol szakmai kifejezés magyar fordítása, pl *distrupting innovation* (pl: ford T model, személyi számítógép, wikipedia, okostelefon), 5let: *felforgató újítás*, *infrastructure inversion*, *open permissionless network*, *[distributed ledger technology](https://searchcio.techtarget.com/definition/distributed-ledger#:~:text=Distributed%20ledger%20technology%20(DLT)%20is,data%20store%20or%20administration%20functionality.)* 
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
- 
