*** Settings ***
Documentation    to validate the login form functionality
Test Setup    open the browser
Resource    ../PO/Generic.robot
Resource    ../PO/LandingPage.robot
Resource    ../PO/ConfirmPage.robot
Resource    ../PO/ShoppingPage.robot
Library    ../CustomLibraries/Shop.py
Library    BuiltIn
Library    Collections
Library    SeleniumLibrary



*** Variables ***
${phones}    iphone X    Nokia Edge



*** Test Cases ***
Validate the Successful login
    LandingPage.Fill out the form        ${user_name}    ${valid_password}
    wait until the element is loaded    ${loading_page}
    ShoppingPage.Phone verification
    Purchasing Multiple Phones    ${phones}
    Wait Until The Element Is Loaded    ${shopping_page}
    ShoppingPage.verify the purchase    ${phones}
    ConfirmPage.validate the confirm page    ${country_name}
    Purchase the Product and Confirm the Purchase
    