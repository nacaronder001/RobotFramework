*** Settings ***
Documentation    you will find the things we use all the time
Library    SeleniumLibrary



*** Variables ***
${loading_page}    CSS:.nav-link


*** Keywords ***
open the browser
    Create Webdriver    Chrome
    Go To    https://rahulshettyacademy.com/loginpagePractise/



wait until the element is loaded
    [Arguments]    ${page_locator}
    Wait Until Element Is Visible    ${page_locator}    10 seconds