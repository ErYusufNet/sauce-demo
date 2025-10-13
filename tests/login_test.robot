
*** Settings ***
Resource    ../resources/saucedemo.resource

*** Test Cases ***
Valid Login With Standard User
    Open SauceDemo
    Login With Credentials    standard_user    secret_sauce
    Get Text    xpath=//span[@class="title"]    ==    Products

