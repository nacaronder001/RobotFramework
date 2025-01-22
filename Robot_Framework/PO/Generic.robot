*** Settings ***
Documentation    A resource file with reusable keywords and variables.
...              The system specific keywords created here form our own
...              domain specific language. They utilize keywords provided
...              by the imported SeleniumLibrary.
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
