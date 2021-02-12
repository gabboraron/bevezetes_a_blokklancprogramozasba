# Bevezetés a blokkláncprogramozásba

**Követelméynek:**
- 1 csoportos beadandó
- 1 ZH a félév végén
- előadásonként opcionális kis HF-k amikkel a ZH kiváltható (4 hetes átfutási idő)

> **Bevezetés**
>
> Bitcoin és Ethereum protokollról lesz szó konkrétan, a blokkláncokat ezek mentén nézzük meg. [`Solidity`](https://docs.soliditylang.org/en/v0.7.4/)-ben lesz a programozás. A cél egy [dApp](https://medium.com/@valhallavet/how-to-build-a-dapp-on-vechain-initial-steps-9a3e35c876f2) használatával lefejlesztése.
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
