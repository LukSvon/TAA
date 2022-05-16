*** Settings ***
Library     SeleniumLibrary
Resource    keyword.resource
Resource    variable.resource
Test Setup      Open browser & accept cookie
Test Teardown       Close Browser


*** Test Cases ***
100 Adding and removing items from cart
    [Documentation]     Test for add 3 grills to cart,
                        ...    check prices & delete products
    Click Grill & Choose Grill From 50 - 85 €
    Add To Cart Grill Ariete Multi Gril 3v1 1916
    Add To Cart Grill Orava EG-1900
    Add To Cart Grill Fieldmann FZG-1004

    Click Element    ${go_to_cart}
    Wait Until Element Is Not Visible    ${loader_variable}
    Check If We Have Correct Grills In Cart
    Price Product 1 Should Be From 50 - 85e
    Price Product 2 Should Be From 50 - 85e
    Price Product 3 Should Be From 50 - 85e

   Delete Item From Cart
#    vymaze prvy grill Fieldmann FZG-1004
    Wait Until Page Contains Element    ${delete_grill_1}
    Click Element    ${delete_grill_1}
    Wait Until Element Is Not Visible    ${loader_variable}
    Check If Grill Fieldmann FZG-1004 was removed


    Delete Item From Cart
#    vymaze druhy grill Ariete Multi Gril 3v1 1916
    Wait Until Page Contains Element    ${delete_grill_2}
    Click Element    ${delete_grill_2}
    Wait Until Element Is Not Visible    ${loader_variable}

    Delete Item From Cart
#    vymaze treti grill Orava EG-1900
    Wait Until Page Contains Element    ${delete_grill_3}
    Click Element    ${delete_grill_3}
    Wait Until Page Contains    Váš košík zíva prázdnotou...




















