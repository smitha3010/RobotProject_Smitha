*** Settings ***
Library    SeleniumLibrary    
Suite Setup      Log    I am inside the Test Suite Setup  
Suite Teardown   Log    I am inside Test Suite Teardown    
Test Setup       Log    I am inside Test Setup  
Test Teardown    Log    I am inside Test Teardown    

Default Tags    sanity    

*** Test Cases ***
MyFirstTest
    [Tags]    smoke
    Log    Hello World...  
    
MySecondTest
    [Tags]    example
    Log    I am in inside the second Test    
    
MyThirdTest
    Log    I am in the Third Test    
FirstSeleniumTest
    
    Open Browser      https://google.com  chrome
    Set Browser Implicit Wait    5
    Input Text    name=q    Automation step by step 
    # Press Keys    name=q    ENTER
     Click Button   name=btnK        
    Sleep    2       
    Close Browser
    Log    Test Completed   
    
         
        

SampleLoginTest
    [Documentation]    This is a sample login test
    Open Browser    ${URL}   chrome
    Set Browser Implicit Wait    5
    LoginKW
    Click Element     id=welcome    
    Click Element     link=Logout
    Close Browser
    Log               Test Completed 
    Log               This was executed by %{username} on %{os}    
    
*** Variables ***
${URL}          https://opensource-demo.orangehrmlive.com/
${CREDENTIALS}  Admin 
&{LOGINDATA}    Username=Admin  Password=admin123 

*** Keywords ***
LoginKW 
    Input Text        id=txtUsername    ${CREDENTIALS}
    Input Password    id=txtPassword    &{LOGINDATA}[Password]   
    Click Button      id=btnLogin
     
    
             
    
    
                     
        
   
       
      