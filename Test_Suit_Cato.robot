*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${LOGIN URL}      http://webdev.xerago.com/cvm
${BROWSER}        chrome
${control_val}    15
${Program_title}    Program for Cross-sell Savings Accounts Volatile account balances
${Creator_status_rej}    Rejected
${Creator_status_apprv}    Approved
${Creator_status_abrt}    Aborted
${alert_txt}      Program already exists for the given period

*** Test Cases ***
Valid Credentials Test
    ${chrome_options} =     Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${chrome_options}   add_argument    headless
    Call Method    ${chrome_options}   add_argument    disable-gpu
    Call Method    ${chrome_options}   add_argument    no-sandbox


    Create WebDriver  Chrome  chrome_options=${chrome_options}
    Go to    ${LOGIN URL}
    
    Maximize Browser Window
    Wait Until Element Is Enabled    //div[@class='login-footertxt']/p
    Sleep	20s
    Element Text Should Be    //label[@class='loginLabel']    Username
    Element Text Should Be    //label[@for='form_password']    Password
    SeleniumLibrary.Input Text    id=form_username    cvmcreator
    SeleniumLibrary.Input Text    id=form_password    cvmcreator@123
    Click Button    form_login
    SeleniumLibrary.Close Browser
   
*** Keywords ***
