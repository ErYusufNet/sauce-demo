*** Settings ***
Resource    ../resources/saucedemo.resource


*** Test Cases ***
Add And Remove Item From Cart
    Open SauceDemo
    Login With Credentials    standard_user    secret_sauce
    Click    xpath=//button[@data-test="add-to-cart-sauce-labs-backpack"]
    Click    id=shopping_cart_container
    Click    xpath=//button[@data-test="remove-sauce-labs-backpack"]
    Get Text    xpath=//span[@class="title"]    ==    Your Cart
