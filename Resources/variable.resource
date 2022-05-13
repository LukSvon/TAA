*** Variables ***
${cookie}   //a[contains(@class,'c-privacy-prompt__cta e-button')]
${continue_shopping}    //div[@class='c-cart-confirm__row c-cart-confirm__buttons']//button[1]
${cart}     //div[@class='c-cart-confirm__row c-cart-confirm__buttons']//a[1]
${grill_1}    //a[@class='c-product__link'][normalize-space()='Ariete Multi gril 3v1 1916']
${grill_2}    //a[@class='c-product__link'][normalize-space()='Orava EG-1900']
${grill_3}    (//a[@href='https://grily.heureka.sk/fieldmann-fzg-1004/'])[2]
${buy_button}    //button[@class='c-top-offer__cart-button e-button e-button--highlight']
${delete_item}      (//a[@class='c-product-card__close c-modal__toggle js-modal__toggle e-action'])[1]
${delete_item1}     //*[@id="snippet--cart-content-data"]/div[3]/div/div/div[1]/section/div/footer/a
${delete_item2}     //*[@id="snippet--cart-content-data"]/div[3]/div[1]/div/div[1]/section/div/footer/a
${delete_item3}     //*[@id="snippet--cart-content-data"]/div[3]/div/div/div[1]/section/div/footer/a
${price_grill_1}        //div[@class='c-product-card__price u-bold']
${price_grill_2}        //div[@class='c-product-card__price u-bold']
${price_grill_3}        //div[@class='c-product-card__price u-bold']