*** Settings ***
Library    Selenium2Library
Resource    ../Resources/register_res.robot

*** Variables ***
${LOGIN_PAGE}                     //*[@id="myform"]/div[7]/p/a
${EMAIL_OR_USERNAME}              //*[@id="your_email"]
${LOGIN_PASSWORD}                 //*[@id="password"]
${LOGIN_BUTTON}                   //*[@id="myform"]/div[3]/input

*** Keywords ***
Open Login Page
    click element    ${LOGIN_PAGE}
    login page should be open

Login Page Should be Open
    title should be    Login

Input Email/Username
    input text    ${EMAIL_OR_USERNAME}    ${VALID_RANDOM_EMAIL}

Input Login Password
    input text    ${LOGIN_PASSWORD}    ${VALID_PASSWORD}

Submit Login Credentials
    click button    ${LOGIN_BUTTON}

Dashboard Brick Should be Open
    title should be    Brick Dashboard
