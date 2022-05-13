# Hodnotenie

### Celkovo

---
- Replikovatelnost testu: 1:4    (PASS:FAIL)
---

#### Errors:
- 2x : WebDriverException: Message: target frame detached
- 2x : ElementClickInterceptedException: Message: element click intercepted: Element <a class="e-button e-button--negative" href="/kosik/?item=7769645&amp;event=delete&amp;do=itemRemove">...</a> is not clickable at point (2026, 681). Other eleme
nt would receive the click: <div class="c-responsive-cart__total">...</div>

---
  
- Z pohladu testingu:
  - test aspon 1x presiel
  - test je citatelny, a rozumiem z neho co sa deje

- Z pohladu automatizacie:
  - chyba mi generickost keywordov
    - nedokazem to prepouzit nijakym sposobom
    - ako priklad uvediem:  
      - mas tam 3x add to cart, s konkretnymi nazvami
        - ale pri `Delete Item From Cart` netusim, ktory sa maze
        - a vlastne ani ty 
  - na riadku 8 v `RobotTest.robot` mas priamo lokator s indexom, netusim co to je
  - detto  ${delete_item1}  je velmi zle nazvanie variable


- ***Overall***:
  - Test presiel aspon 1x , su tam problemy s lokatormi a tym, ze sem tam sa ti stane,
    ze obrazovka nieje nacitane, a je tam este stale pritomny loader

### Keywords subor

- `General`
  - `Page Should Contain` 
    - vyhybaj sa, pouzivaj `Wait Until Page Contains`
    1. budes cakat kym sa element objavi
    2. nebudes potrebovat SLEEP!
  - `Run Keyword If    ${basket}==3    TestOK1`
    - tomuto nerozumiem
    - `Should Be True    ${basket} == 3`
      - Failne, ak ${basket} nebude 3
    - `Should Equal As Integers    ${basket}   3`
    - Nerozumim uplne pointu toho `Run Keyword If`
      - Ak si chcel spravit len log, tak to vies spravit aj ako `Run Keyword If    ${basket} == 3    Log    Pocet produktov v kosiku sedi`
  - pride mi, ze mas moc `Sleep` keywordov kade tade, preferovane su VZDY `Wait-keywordy`

  - Vo vsetobecnosti, rob veci genericky. Ak mam test, ktory ma nieco kupovat a validovat, 
  treba to ci uz na zaklade indexov, alebo nazvov parametrizovat. Potrebujes ako tester
  v kazdom bode vediet co sa deje... A ked citam tvoje KW, tak mi to az na KW na riadkoch 21, 29, 37 nie je vobec jasne. Je to az priliz nic nehovoriace, tie keywordy


  - `Set Window Size` je preferovane, je mozne, ze maximize sposobuje problemy s padmi testov na mojom rozliseni
    
- Keyword: `Click Grill & Choose Grill From 50 - 90 €`
  - je fajn, ze si keyword pomenoval takto, avsak co ak nechcem Grilly? 
  - co ak chcem iny range? 
  - generickost je nieco co chces pri tomto robit
  `Click section and filtery by    Grill    50 - 90 €`

- Keyword `Add To Cart Grill Ariete Multi Gril 3v1 1916`
  - je fajn, ze viem co sa pridava
  - nie je fajn, ze musim mat 3kw, ktore su 'locknute' na konkretne produkty
  - generickost!
  `Add Item To Cart    Ariete Multi Gril 3v1 1916`

- Keyword: `Check If We Have Correct Grills In Cart`
  - zvlastne nazvaty keyword, neni jasne ze vo co go a ake produkty pozeram
  - `Page Should Contain` vs `Wait Until Page Contains`  (2he je spravne)

- Keyword: `Delete Item From Cart`
  - zase, chyba mi informacia, ktory item sa maze
  - 1? posledny? stredny? nahodny?

- Keyword: `Check If Item Was Removed`
  - to co vyssie
  - aky item kontroluje? 1? 10 , 11? nahodny?
  - pri Delete aj Check by som pouvazoval s pouzitim aspon INDEXU
  - aby som vedel povedat, ze zmaz mi napr 3. item

- Keyword: `Check Empty Cart`
  - tu stacil klasicky wait na konci testu
  - ta location, vyzera docela nerozumne, na pouzitie validacie, niesom si 100% isty, ci to bude vzdy rovnake

- Keyword: `Price Product 3 Should Be From 50-90`
  - a vsetky 3 jeho odnoze
  - spravit GENERICKY, a  index posielat ako argument
  - ESTE lepsie, ako argument poslat nazov produktu! 
  - `Should Be True    50 < float(${check_price}) < 90`
  
### Variables subor

- nie je zle, davat pred locatory aj typ locatoru
  - v tvojom pripade `xpath=//...`
- lokatory, v ktorych pouzivas indexy (button[1], div[1]) su velmi nachylne na zmeny v applikacii
a mozu robit ine ako predpokladas 
- zajtra moze byt update, a uz tie locatory nebudu funkcne

### Test Cases subor

- Nazov testu je velmi zvlastny... `RobotTest.robot`. Neni veru zrejme o co sa jedna na prvy pohlad.

- Test je na prvy pohlad citatelny, nie je to uplne zle
- Avsak pri hlbsom citani mi chyba generickost kw.. od riadku 18 neni uplne zrejme, co sa tam deje (kw su proste moc `jedinecne` a robia skrytu logiku. Tj. nevidim z urovne testu, co sa maze, co sa kontroluje atd..)

### Readme.md subor

- .md subor je markdown, ak chces pouzivat tento format, je dobre to v tom formate s formatovacimy znakmi aj pisat
- sekcia `#notes` nie je uplne potrebna, hlavne ak tam pises "vlastnej" ceste, a do zatvorky das cestu do tvojeho adresara
- `Pokial by zacalo vyskakovat ....` Toto veru je velmi zmatocna informacia a neviem co by som 
si s nou mal pocat. Preco si to tam nezadal .. co je 'Konkretny step'?

- `#installation` nepotreboval som ziadnu dalsiu kniznicu instalovat, vsetko zbehlo v pohode voci 'requirements.txt'.

- dal by som aspon linky, kde sa da chromedriver stiahnut a informaciu o tom, ze musi byt v systemovych cestach, aby to fungovalo. 

- `String` library je nativne v RF , takze sa neinstaluje. A dalsia vec je, ze nepiseme 'ako to mam ja', ja neviem ako to mas 

### requirements.txt subor
 
- v requirements netreba davat komentare o tom ako to nainstalovat 
- `pabot` nikde nespominas, nie je nutne ho instalovat
- snaz sa v requirements.txt drzat iba veci potrebne pre kod

### Git repository

- obsah adresara je dostatocny
- nie je tam nic chybajuce a ani nic navyse
- paci sa mi, ze si nahodil .gitignore a nemas ziadny nepotrebny balast v kniznici
- doporucujem, pre adresare a nazvy suborov pouzivat `lowercase` 
