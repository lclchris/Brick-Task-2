*** Settings ***
Library    Selenium2Library

*** Variables ***
${BROWSER}                  Chrome
${SIGNUP_URL}               https://brick-qa-assignment.herokuapp.com/
${VALID_USER}               anas_em2@g.co
${VALID_PASSWORD}           123456
${FIRST_NAME}               //*[@id="firstName"]
${LAST_NAME}                //*[@id="lastName"]
${EMAIL}                    //*[@id="email"]
${PHONE_NUMBER}             //*[@id="phoneNumber"]
${ADDRESS}                  //*[@id="address"]
${PASSWORD}                 //*[@id="password"]
${CONFIRM_PASSWORD}         //*[@id="confirm_password"]
${REGISTER_BUTTON}          //*[@id="myform"]/div[7]/input
${SUCCESS_BOX}              //*[@id="swal2-title"]
${SUCCESS_BOX_OK_BUTTON}    //*[@type="button" and text()="OK"]
${DELAY}                    0

*** Keywords ***
Open Browser To Sign Up Page
    open browser    ${SIGNUP_URL}    ${BROWSER}
    maximize browser window
    set selenium speed    ${DELAY}
    register page should be open

Register Page Should be Open
    title should be    Brick Sign Up Form

Input All Data
    Input First Name
    Input Last Name
    Input Email
    Input Phone Number
    Input Address
    Input Password
    Input Confirm Password

Show Success Box
    wait until element is visible    ${SUCCESS_BOX}
    element text should be    ${SUCCESS_BOX}    Success

Click OK on Success Box
    click button    ${SUCCESS_BOX_OK_BUTTON}

Input First Name
    input text    ${FIRST_NAME}    Anastasia

Input Last Name
    input text    ${LAST_NAME}    Emily

Input Email
    input text    ${EMAIL}    ${valid_user}

Input Phone Number
    input text    ${PHONE_NUMBER}    +6212345678901

Input Address
    input text    ${ADDRESS}    Jakarta

Input Password
    input text    ${PASSWORD}    ${VALID_PASSWORD}

Input Confirm Password
    input text    ${CONFIRM_PASSWORD}    ${VALID_PASSWORD}

Submit Credentials
    click button    ${REGISTER_BUTTON}