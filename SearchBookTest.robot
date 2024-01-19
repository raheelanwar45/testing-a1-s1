booksearch application
*** Settings ***
Library    SeleniumLibrary
Test Setup    Open Browser    ${BASE_URL}    chrome
Test Teardown    Close All Browsers

*** Variables ***
${BASE_URL}    http://localhost:3000  # Update with the actual URL of your application

*** Test Cases ***
Search For Books
    Input Text    css=input.search-bar    Robot Framework
    Click Element    css=input.search-bar
    Wait Until Element Is Visible    css=.book-container    timeout=10s
    Element Should Be Visible    css=.book-container
    Log    Books were successfully searched.

*** Keywords ***
Open Browser To SearchBook
    Open Browser    ${BASE_URL}
