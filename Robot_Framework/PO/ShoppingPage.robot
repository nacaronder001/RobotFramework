*** Settings ***
Documentation    shopping for items on the next page
Library    SeleniumLibrary
Library    Collections
Library    BuiltIn



*** Variables ***
${shopping_page}    CSS:.btn.btn-default


*** Keywords ***
Phone verification
    ${expected_list}    Create List    iphone X    Samsung Note 8    Nokia Edge    Blackberry
    @{phones}    Get Webelements    CSS:.card-title
    ${actual_list}    Create List
    FOR    ${phone}    IN    @{phones}
        Append To List    ${actual_list}    ${phone.text}
    END
    Lists Should Be Equal    ${actual_list}    ${expected_list}

Purchase the phone
    [Arguments]     ${cardName}
    @{phones}    Get Webelements    CSS:.card-title
    ${index}    Set Variable    1
    FOR    ${phone}    IN    @{phones}
        Exit For Loop If    '${phone.text}' == '${cardName}'
        ${index}=    Evaluate  1
    END
    Click Element    XPATH:(//button[@class='btn btn-info'])[${index}]


verify the purchase
    [Arguments]    ${element}
    ${phone_names}    Get Webelements    css:h4
    ${my_list}    Create List
    ${index}    Set Variable    1
    FOR    ${phone}    IN    @{phone_names}
        Append To List    ${my_list}    ${phone.text}
        ${index}=    Evaluate  1
    END
    Click Element    CSS:.btn.btn-success
