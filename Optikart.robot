*** Settings ***
Library           Selenium2Library

*** Test Cases ***
Login
    Open Browser    https://keprendeles.optikart.hu/
    Click Element    //*[@id="post-95"]/div/div/div/div/div[4]/div/div/a
    Input Text    //*[@id="username-5474"]    myName\n
    Input Text    //*[@id="user_password-5474"]    password12N
    Click Button    //*[@id="um-submit-btn"]
    ${/}

Register
        Open Browser    https://keprendeles.optikart.hu/register/
        Input Text    //*[@id="user_login-5473"]    myName
        Input Text    //*[@id="first_name-5473"]    myothername
        Input Text    //*[@id="last_name-5473"]    myn
        Input Text    //*[@id="user_email-5473"]    hello@gmail.com
        Input Text    //*[@id="user_password-5473"]    password12N
        Input Text    //*[@id="confirm_user_password-5473"]    password12N
        Click Button    //*[@id="um-submit-btn"]
        Close All Browsers
