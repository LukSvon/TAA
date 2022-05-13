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
    Click Grill & Choose Grill From 50 - 90 €
    Add To Cart Grill Ariete Multi Gril 3v1 1916
    Add To Cart Grill Orava EG-1900
    Add To Cart Grill Fieldmann FZG-1004

    Click Element    (//span[@class='c-user-controls__icon-container'])[3]
    Check If We Have Correct Grills In Cart
    Price Product 1 Should Be From 50 - 90e
    Price Product 2 Should Be From 50 - 90e
    Price Product 3 Should Be From 50 - 90e

    Delete Item From Cart
    Wait Until Page Contains Element    ${delete_item1}
    Click Element    ${delete_item1}
    Check If Item Was Removed


    Delete Item From Cart
    Wait Until Page Contains Element    ${delete_item2}
    Click Element    ${delete_item2}

    Delete Item From Cart
    Wait Until Page Contains Element    ${delete_item3}
    Click Element    ${delete_item3}
    Check Empty Cart




















