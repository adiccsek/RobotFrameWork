*** Settings ***
Library           Selenium2Library

*** Test Cases ***
Login
    Open Browser    https://keprendeles.optikart.hu/login
    Input Text    //*[@id="username-5474"]    myName\n
    Input Text    //*[@id="user_password-5474"]    password12N
    Click Button    //*[@id="um-submit-btn"]
    Element Should Contain    //*[@id="post-5477"]/header/h1    myothername myn

login_empty_username
    Open Browser    https://keprendeles.optikart.hu/login
    Input Text    //*[@id="username-5474"]    ${EMPTY}
    Input Text    //*[@id="user_password-5474"]    password12N
    Click Button    //*[@id="um-submit-btn"]
    Element Should Contain    //*[@id="um-error-for-username-5474"]    Please enter your username or email
    Element Should Contain    //*[@id="um-error-for-user_password-5474"]    Password is incorrect. Please try again.

login_empty_password
    Open Browser    https://keprendeles.optikart.hu/login
    Input Text    //*[@id="username-5474"]    myName\n
    Input Text    //*[@id="user_password-5474"]    ${EMPTY}
    Click Button    //*[@id="um-submit-btn"]
    Element Should Contain    //*[@id="um-error-for-user_password-5474"]    Please enter your password

login_empty_credential
    Open Browser    https://keprendeles.optikart.hu/login
    Input Text    //*[@id="username-5474"]    ${EMPTY}
    Input Text    //*[@id="user_password-5474"]    ${EMPTY}
    Click Button    //*[@id="um-submit-btn"]
    Element Should Contain    //*[@id="um-error-for-username-5474"]    Please enter your username or email
    Element Should Contain    //*[@id="um-error-for-user_password-5474"]    Please enter your password

login_wrong_username
    Open Browser    https://keprendeles.optikart.hu/login
    Input Text    //*[@id="username-5474"]    myNamddddde\n
    Input Text    //*[@id="user_password-5474"]    password12N
    Click Button    //*[@id="um-submit-btn"]
    Element Should Contain    //*[@id="um-error-for-user_password-5474"]    Password is incorrect. Please try again.
    Close All Browsers

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
