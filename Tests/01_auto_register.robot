*** Settings ***
Resource    ../Resources/register_res.robot

*** Test Cases ***
Valid Register
    Open Browser To Sign Up Page
    Input All Data
    Submit Credentials
    Show Success Box
    Click OK on Success Box
    [Teardown]    Close Browser