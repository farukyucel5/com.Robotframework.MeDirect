*** Settings ***
Library         SeleniumLibrary
Variables       ../Locators/locators.py
Variables       ../TestData/testData.py


*** Keywords ***
navigate to the website
    Open Browser    ${Url}    ${BROWSER}

click login button
    Click Element    ${loginBtn}

type in your customer number
    Input Text    ${customerNumber}    12345
    Click Button    ${cookie}

click submit
    Click Button    ${submitBtn}

verify the unsuccesfull login
    Element Should Be Visible    ${unsuccessfulLoginText}

