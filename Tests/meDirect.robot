*** Settings ***
Library             SeleniumLibrary
Resource            ../Resource/Keywords/homePage.robot

Suite Setup         navigate to the website
Suite Teardown      Close browser
Test Template       Enter a number with less than six digits


*** Test Cases ***    customerNumber
customer number1    12345
customer number2    3412
customer number3    980
customer number4    12
customer number5    7


*** Keywords ***
MeDirect negatif login test
    [Arguments]    ${customerNum}
    Enter a number with less than six digits    ${customerNum}

