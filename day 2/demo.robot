*** Settings ***
Library  Selenium2Library

*** Test Cases ***
#Demo Test Case
#    [Documentation]  Demo
##    [Documentation]  Demo
#    Open browser  browser=chrome
#    Go to   https://rahulshettyacademy.com/angularpractice/
#    Wait until element is visible  name=name
#    Input text  name=name  Jenkins-demo
#    Wait until element is visible  id=exampleFormControlSelect1
#    Select from list by label   id=exampleFormControlSelect1  Female
#


Demo Test Case
    [Documentation]  Demo
    Open browser  browser=firefox
    Go to   https://www.google.com
    Wait until element is visible    id=L2AGLb
    Click element    id=L2AGLb
    Wait until element is visible  name=q
    Input text    name=q    bol
    Sleep    3s
    Go to    https://www.google.com/search?q=bol
#    Click element    name=btnK
    Wait until element is visible    xpath: //*[contains(text(), "De winkel van ons allemaal")]
    Sleep    3s
    Click element    xpath: //*[contains(text(), "De winkel van ons allemaal")]


