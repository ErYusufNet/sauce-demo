*** Settings ***
Library    Browser

*** Variables ***
${URL}    https://www.saucedemo.com/

*** Keywords ***
Open SauceDemo
    New Browser    chromium    headless=False
    New Page    ${URL}

Login With Credentials
    [Arguments]    ${username}    ${password}
    Type Text    id=user-name    ${username}

    Type Secret    id=password    $password

    Click        id=login-button

Click Submit
    Click        id=login-button
