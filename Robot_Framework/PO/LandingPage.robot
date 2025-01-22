*** Settings ***
Documentation    this is all about the first page
Library    SeleniumLibrary




*** Variables ***
${user_name}        rahulshettyacademy
${valid_password}    learning
${warning}           CSS:.modal-body
${terms}             id:terms
${login}            id:signInBtn
${pop_up}            id:okayBtn
${teacher}           CSS:select.form-control



*** Keywords ***
Fill out the form
    [Arguments]       ${username}    ${password}
    Input Text        id:username    ${username}
    Input Password    id:password    ${password}
    Click Element     xpath:(//span[@class='checkmark'])[2]
    Wait Until Element Is Visible    ${warning}
    Click Element    ${pop_up}
    Click Element    ${pop_up}
    Wait Until Element Is Not Visible    ${warning}
    Select From List By Value    ${teacher}    teach
    Click Element     ${terms}
    Click Button      ${login}