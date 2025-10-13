*** Settings ***
Resource    ../resources/saucedemo.resource
Resource    ../resources/saucedemo.resource
*** Test Cases ***
Complete Purchase As Standard User
    Open SauceDemo
    Login With Credentials    standard_user    secret_sauce
    Click    xpath=//button[@data-test="add-to-cart-sauce-labs-backpack"]
    Click    id=shopping_cart_container
    Click    id=checkout
    Type Text    id=first-name    Yusuf
    Type Text    id=last-name     Er
    Type Text    id=postal-code   12345
    Click        id=continue
    Click        id=finish
    Get Text     xpath=//h2    ==    Thank you for your order!
