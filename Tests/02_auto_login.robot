*** Settings ***
Resource    ../Resources/login_res.robot
Resource    ../Resources/register_res.robot

*** Test Cases ***
Valid Login
    Open Browser To Sign Up Page
    Open Login Page
    Input Email/Username
    Input Login Password
    Submit Login Credentials
    Show Success Box
    Click OK on Success Box
    Dashboard Brick Should be Open
    [Teardown]    Close Browser