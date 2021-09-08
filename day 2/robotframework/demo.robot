*** Settings ***
Library  Selenium2Library

*** Test Cases ***
Demo Test Case
    [Documentation]  Demo
#    [Documentation]  Demo
    Open browser  browser=firefox
    Go to   https://rahulshettyacademy.com/angularpractice/
    Wait until element is visible  name=name
    Input text  name=name  Jenkins-demo

    


#Demo Test Case
#    [Documentation]  Demo
#    Open browser  browser=firefox
#    Go to   https://rahulshettyacademy.com/angularpractice/
#    Wait until element is visible  name=name
#    Click element  class=btn btn-success
#    Sleep  5s


