*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${url}              https://amazon.in/
${searchfield}      //*[@id="twotabsearchtextbox"]
${searchButton}     //*[@id="nav-search-submit-button"]
${searchQuery}      Samsung Phones
${buyNowButton}     //*[@id="buy-now-button"]


*** Test Cases ***
Open Browser and Link
    Open Browser    browser=edge    url=${url}
    Maximize Browser Window

Search
    Sleep    time_=1
    Input Text    locator=${searchfield}    text=${searchQuery}
    Click Element    locator=${searchButton}
    Sleep    time_=5
    Switch Window    NEW

Buy
    Execute Javascript    window.scrollBy(0,200)
    Click Element    locator=${buyNowButton}
    Sleep    time_=2

close browser
    Close All Browsers
