*** Settings ***
Documentation    This is the last about for confirmation about the country and verify the purchase
Resource    Generic.robot
Library    SeleniumLibrary
Library    BuiltIn
Library    Collections

*** Variables ***
${country_name}    Turkey

*** Keywords ***
validate the confirm page
    [Arguments]    ${country_name}
    Input Text    id:country    ${country_name}
    wait until the element is loaded       XPATH://a[text()='${country_name}']
    Click Element     XPATH://a[text()='${country_name}']
    Click Element    CSS:.checkbox label


Purchase the Product and Confirm the Purchase
    Click Button    CSS:.btn.btn-success.btn-lg
    Page Should Contain    Success!