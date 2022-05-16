*** Variables ***
${cookie}   //a[contains(@class,'c-privacy-prompt__cta e-button')]
${continue_shopping}    //button[text()='Pokračovať v nákupe']
${grill_1}    //a[@class='c-product__link'][normalize-space()='Ariete Multi gril 3v1 1916']
${grill_2}    (//a[@href='https://grily.heureka.sk/orava-eg-1900/'])[2]
${grill_3}    (//a[@href='https://grily.heureka.sk/fieldmann-fzg-1004/'])[2]
${buy_button}    xpath=//span[text()='Kúpiť na Heureke']
${delete_button}      (//a[@class='c-product-card__close c-modal__toggle js-modal__toggle e-action'])[1]
${delete_grill_1}     //*[@id="snippet--cart-content-data"]/div[3]/div/div/div[1]/section/div/footer/a
${delete_grill_2}     //*[@id="snippet--cart-content-data"]/div[3]/div[1]/div/div[1]/section/div/footer/a
${delete_grill_3}     //*[@id="snippet--cart-content-data"]/div[3]/div/div/div[1]/section/div/footer/a
${price_grill_1}        //div[@class='c-product-card__price u-bold']
${price_grill_2}        //div[@class='c-product-card__price u-bold']
${price_grill_3}        //div[@class='c-product-card__price u-bold']
${go_to_cart}     (//span[@class='c-user-controls__icon-container'])[3]
${loader_variable}      //div[@class='c-loading js-loading--1652688126577 null c-loading--overlay c-loading--centered']//*[name()='svg']
