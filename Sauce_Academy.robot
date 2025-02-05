*** Settings ***
Library           Selenium2Library

*** Test Cases ***
Login
    Open Browser    https://www.saucedemo.com/    Firefox
    Input Text    //*[@id="user-name"]    standard_user
    Input Text    //*[@id="password"]    secret_sauce
    Click Element    //*[@id="login-button"]
    Close Browser

NewTestCase
    Open Browser    https://www.saucedemo.com/    Firefox
    Input Text    //*[@id="user-name"]    ${/}
    Input Text    //*[@id="password"]    ${/}
    Click Element    //*[@id="login-button"]
    Element Should Contain    //*[@id="login_button_container"]/div/form/div[3]    Epic sadface: Username is required
    Close Browser

EmptyPassword
    Open Browser    https://www.saucedemo.com/    Firefox
    Input Text    //*[@id="user-name"]    standard_user
    Input Text    //*[@id="password"]    ${EMPTY}
    Click Element    //*[@id="login-button"]
    Element Should Contain    //*[@id="login_button_container"]/div/form/div[3]    Epic sadface: Username* and password do not match any user in this service
    Close Browser
