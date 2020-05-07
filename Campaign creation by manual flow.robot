*** Settings ***
Library           SeleniumLibrary
Library           Selenium2Library

*** Variables ***
${url}            http://webtest.xerago.com/cvm
${browser}        chrome
${excelfile}      I:/testdata.xls
${control_val}    15
${Program_title}    Program for Cross-sell Savings Accounts Volatile account balances
${Creator_status_rej}    Rejected
${Creator_status_apprv}    Approved
${Creator_status_abrt}    Aborted
${alert_txt}      Program already exists for the given period

*** Test Cases ***
To create a new campaign
    SeleniumLibrary.Open Browser    ${url}    ${browser}
    SeleniumLibrary.Maximize Browser Window
    SeleniumLibrary.Wait Until Element Is Enabled    //div[@class='login-footertxt']/p    40s
    SeleniumLibrary.Input Text    id=form_username    testpurpose
    SeleniumLibrary.Input Text    id=form_password    testpurpose
    SeleniumLibrary.Click Button    id=form_login
    Sleep    20s
    SeleniumLibrary.Wait Until Element Is Enabled    xpath=.//li[@ng-click='createNewProgram()']    60s
    SeleniumLibrary.Click Element    xpath=.//li[@ng-click='createNewProgram()']
    Sleep    20s
    SeleniumLibrary.Wait Until Element Is Enabled    xpath=.//div[@id='productName'][contains(.,'Savings Accounts')]    40s
    SeleniumLibrary.Click Element    xpath=.//div[@id='productName'][contains(.,'Savings Accounts')]
    Sleep    20s
    SeleniumLibrary.Click Element    xpath=.//div[@class='objectivelist']/div[contains(.,'Cross-sell')]
    SeleniumLibrary.Wait Until Element Is Enabled    xpath=.//div[@class='approach-head']/div[contains(.,'Volatile account balances')]    40s
    SeleniumLibrary.Click Element    xpath=.//div[@class='approach-head']/div[contains(.,'Volatile account balances')]
    SeleniumLibrary.Click Element    xpath=.//div[@id='fromDate']//div/a[2]
    SeleniumLibrary.Click Element    xpath=.//div[@id='fromDate']//div/a[2]
    SeleniumLibrary.Click Element    xpath=.//div[@id='fromDate']//div/a[2]
    SeleniumLibrary.Click Element    xpath=.//div[@id='fromDate']//div/a[2]
    SeleniumLibrary.Click Element    xpath=.//div[@id='fromDate']//div/a[2]
    SeleniumLibrary.Click Element    xpath=(.//table[@class='ui-datepicker-calendar']/tbody/tr/td[contains(.,'3')])[1]
    SeleniumLibrary.Click Element    xpath=.//input[@name='saveChanges']
    Sleep    15s
    SeleniumLibrary.Wait Until Page Contains Element    xpath=.//h3[contains(.,'Age')]    10s
    SeleniumLibrary.Click Element    xpath=(.//*[@id='audienceForm']/div[2]/div[2]/div/label)[1]
    SeleniumLibrary.Wait Until Page Contains Element    xpath=.//h3[contains(.,'Vintage (in years)')]    10s
    SeleniumLibrary.Click Element    xpath=(.//*[@id='audienceForm']/div[3]/div[2]/div/label)[1]
    SeleniumLibrary.Wait Until Page Contains Element    xpath=.//h3[contains(.,'Annual Income')]    10s
    SeleniumLibrary.Click Element    xpath=(.//*[@id='audienceForm']/div[4]/div[2]/div/label)[1]
    SeleniumLibrary.Wait Until Page Contains Element    xpath=.//h3[contains(.,'Years at Current Residence ')]    10s
    SeleniumLibrary.Click Element    xpath=(.//*[@id='audienceForm']/div[5]/div[2]/div/label)[1]
    SeleniumLibrary.Wait Until Page Contains Element    xpath=.//h3[contains(.,'The Customer lives in')]    10s
    SeleniumLibrary.Click Element    xpath=(.//*[@id='audienceForm']/div[6]/div[2]/div/label)[1]
    SeleniumLibrary.Wait Until Page Contains Element    xpath=.//h3[contains(.,'Employment Status')]    10s
    SeleniumLibrary.Click Element    xpath=.//*[@id='audienceForm']/div[7]//div/div/div[1]/label
    SeleniumLibrary.Wait Until Page Contains Element    xpath=.//h3[contains(.,'VIP')]    10s
    SeleniumLibrary.Click Element    xpath=(.//*[@id='audienceForm']/div[8]//div/label)[1]
    SeleniumLibrary.Wait Until Page Contains Element    xpath=.//h3[contains(.,'Standard Exclusions')]    10s
    SeleniumLibrary.Click Element    xpath=(.//*[@id='audienceForm']/div[9]/div/div/label)[1]
    SeleniumLibrary.Wait Until Page Contains Element    xpath=.//h3[contains(.,'Standard Inclusions ')]    10s
    SeleniumLibrary.Click Element    xpath=.//*[@id='audienceForm']/div[10]/div/div/div/div/label
    SeleniumLibrary.Wait Until Page Contains Element    xpath=.//a[@title='Check Count']    40s
    SeleniumLibrary.Click Element    xpath=.//a[@title='Check Count']
    Sleep    10s
    SeleniumLibrary.Wait Until Page Contains Element    xpath=.//div[@ng-show='showRecordCount']    5s
    SeleniumLibrary.Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    SeleniumLibrary.Wait Until Page Contains Element    xpath=.//div[@ng-repeat='collection in productPercentage'][2]    30s
    SeleniumLibrary.Click Element    xpath=.//div[@ng-repeat='collection in productPercentage'][2]
    Sleep    15s
    SeleniumLibrary.Click Element    xpath=.//a[@title='Save and Proceed']
    Sleep    15s
    SeleniumLibrary.Click Element    xpath=(.//div[@class='btn-group fg col-sm-8']/label)[1]
    Sleep    15s
    SeleniumLibrary.Click Element    xpath=.//table[@class='ds-table']/tbody/tr/td[15]/div
    Sleep    15s
    SeleniumLibrary.Click Element    xpath=(.//table[@class='ds-table']/tbody/tr/td[15]/div/following-sibling::ul/li/label)[1]
    SeleniumLibrary.Click Element    xpath=(.//table[@class='ds-table']/tbody/tr/td[15]/div/following-sibling::ul/li/label)[3]
    Sleep    15s
    SeleniumLibrary.Click Button    xpath=.//button[@title='Next']
    Sleep    15s
    SeleniumLibrary.Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    Sleep    20s
    SeleniumLibrary.Click Element    xpath=.//input[@title='Save & Proceed']
    Sleep    25s
    SeleniumLibrary.Click Element    xpath=.//p[@class='sdnptop pfontsize ng-binding']
    Sleep    20s
    SeleniumLibrary.Click Element    xpath=.//div[@class='col-sm-12 sdnmaincontainerforsavedtemplate']/div/div[@class='col-sm-4 ng-scope'][1]
    Sleep    20s
    SeleniumLibrary.Mouse Over    xpath=.//div[@class='templatepopcombo']/div[@class='Emailer']
    Sleep    10s
    SeleniumLibrary.Click Element    xpath=.//div[@class='templatepopcombo']/div[@class='Emailer']
    Sleep    20s
    SeleniumLibrary.Wait Until Element Is Enabled    xpath=.//button[@ng-click='channelselectfornext()']    50s
    Sleep    10s
    SeleniumLibrary.Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    SeleniumLibrary.Click Element    xpath=.//button[@ng-click='channelselectfornext()']
    Sleep    15s
    SeleniumLibrary.Wait Until Element Is Enabled    xpath=.//button[@title='Save and Continue']    30s
    SeleniumLibrary.Click Element    xpath=.//button[@title='Save and Continue']
    Sleep    15s
    SeleniumLibrary.Wait Until Element Is Enabled    xpath=.//p[@class='paddingSummary updatedsummary']    40s
    SeleniumLibrary.Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    SeleniumLibrary.Click Element    xpath=.//button[@ng-click='approval()']
    SeleniumLibrary.Close Browser

Review and Approve a campaign
    SeleniumLibrary.Open Browser    ${url}    ${browser}
    SeleniumLibrary.Maximize Browser Window
    SeleniumLibrary.Wait Until Element Is Enabled    //div[@class='login-footertxt']/p
    SeleniumLibrary.Input Text    id=form_username    reviewers
    SeleniumLibrary.Input Text    id=form_password    reviewers@123
    SeleniumLibrary.Click Button    id=form_login
    Sleep    20s
    SeleniumLibrary.Click Element    xpath=(.//*[contains(@class,'cname') and contains(text(),'Program for Cross-sell Savings Accounts Volatile account balances')]/parent::*/parent::*/parent::*//*[@ng-click='conApproveCamp(x)'])[1]
    Sleep    20s
    SeleniumLibrary.Click Element    xpath=.//button[@ng-click='approveProgram(0)']
    Sleep    20s
    SeleniumLibrary.Click Element    xpath=(.//button[@title='Ok'])[2]
    SeleniumLibrary.Click Element    xpath=(.//*[contains(@class,'cname') and contains(text(),'Program for Cross-sell Savings Accounts Volatile account balances')]/parent::*/parent::*/parent::*//*[@ng-click='comApproveCamp(x)'])[1]
    Sleep    15s
    SeleniumLibrary.Click Element    xpath=.//button[@ng-click='approveProgramCom(0)']
    Sleep    10s
    SeleniumLibrary.Click Element    xpath=(.//button[@title='Ok'])[2]
    SeleniumLibrary.Close Browser
