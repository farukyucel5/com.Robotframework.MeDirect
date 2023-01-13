*** Settings ***
Library     SeleniumLibrary
Resource    ../Resource/Keywords/homePage.robot


*** Test Cases ***
MeDirect negatif login test
    navigate to the website
    Maximize Browser Window
    Set Browser Implicit Wait    15
    click login button
    Switch Window    url:https://login.medirect.com.mt/account/login
    Sleep    3
    type in your customer number
    click submit
    verify the unsuccesfull login

