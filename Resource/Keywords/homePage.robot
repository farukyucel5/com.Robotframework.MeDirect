*** Settings ***
Library         SeleniumLibrary
Variables       ../Locators/locators.py
Variables       ../TestData/testData.py


*** Keywords ***
navigate to the website
    Open Browser    ${Url}    ${BROWSER}
    Maximize Browser Window
    Set Browser Implicit Wait    15
    Click Element    ${loginBtn}
    Switch Window    url:https://login.medirect.com.mt/account/login
    Sleep    3

Enter a number with less than six digits
    [Arguments]    ${customerNumberInput}
    Input Text    ${customerNumber}    ${customerNumberInput}
    Sleep    2s
    Click Button    ${submitBtn}
    Element Should Be Visible    ${unsuccessfulLoginText}

Close browser
    Close All Browsers

