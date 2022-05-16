*** Settings ***
Library     SeleniumLibrary
Library    String


*** Keywords ***
Open browser & accept cookie
    Open Browser    https://www.heureka.sk/      gc
    Set Window Size    1850    1000
    Wait Until Page Contains Element    ${cookie}
    Click Element    ${cookie}


Click section and filter by Grill 50 - 85 €
    Click Element    xpath=//h2[text()='Tipy na grilovanie a piknik']
    Click Element    xpath=//a[@data-gtm-event-label='Grily']
    Click Element    //label[@for='price-2']
    Wait Until Page Contains    Grily 50 – 85 €
    Sleep    2s

Add To Cart Grill Ariete Multi Gril 3v1 1916
    Scroll Element Into View    ${grill_1}
    Click Element    ${grill_1}
    Click Element    ${buy_button}
    Wait Until Page Contains Element    ${continue_shopping}
    Click Element    ${continue_shopping}
    Go Back

Add To Cart Grill Orava EG-1900
    Scroll Element Into View    ${grill_2}
    Click Element    ${grill_2}
    Click Element    ${buy_button}
    Wait Until Page Contains Element    ${continue_shopping}
    Click Element    ${continue_shopping}
    Go Back

Add To Cart Grill Fieldmann FZG-1004
    Scroll Element Into View    ${grill_3}
    Click Element    ${grill_3}
    Click Element    ${buy_button}
    Wait Until Page Contains Element    ${continue_shopping}
    Sleep    1s
    Click Element    ${continue_shopping}


Check If We Have Correct Grills In Cart
#   skontroluje, ci mame grilly, ktore sme si pridali do kosiku
    Wait Until Page Contains    Fieldmann FZG 1004
    Sleep    1s
    Wait Until Page Contains    Ariete Elektrický multi gril 3v1 1916
    Sleep    1s
    Wait Until Page Contains    Ariete Elektrický multi gril 3v1 1916
    Page Should Contain    Elektrický stolný gril Orava EG-1900
    ${basket}=   Get Element Count    //div[@class='c-product-card__bottom-wrapper']
    Run Keyword If    ${basket}==3    TestOK1

TestOK1
    Log    Pocet produktov v kosiku sedi

Delete Item From Cart
    Wait Until Page Contains Element    ${delete_button}
    Wait Until Element Is Not Visible    ${loader_variable}
    Sleep    4s
    Click Element    ${delete_button}
    Sleep    3s

Price Product 1 Should Be From 50 - 85e
    ${check_price}    get text    ${price_grill_1}
    ${check_price}    remove string    ${check_price}   €
    ${check_price}    replace string    ${check_price}    ,    .
    Should be true    float(${check_price})<85
    Should be true    float(${check_price})>50

Price Product 2 Should Be From 50 - 85e
    ${check_price}    get text    ${price_grill_2}
    ${check_price}    remove string    ${check_price}   €
    ${check_price}    replace string    ${check_price}    ,    .
    Should be true    float(${check_price})<90
    Should be true    float(${check_price})>50

Price Product 3 Should Be From 50 - 85e
    ${check_price}    get text    ${price_grill_2}
    ${check_price}    remove string    ${check_price}   €
    ${check_price}    replace string    ${check_price}    ,    .
    Should be true    float(${check_price})<90
    Should be true    float(${check_price})>50


Check If Grill Fieldmann FZG-1004 was removed
    Wait Until Page Contains    115,80 €
    ${basket}=   Get Element Count    //div[@class='c-product-card__bottom-wrapper']
    Run Keyword If    ${basket}==2    TestOK1
    Page Should Not Contain    Fieldmann FZG 1004




