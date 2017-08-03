*** Settings ***

Resource    ../../../resources/robotframework/res/resources.robot


*** Variables ***





*** Test Cases ***
Response code using valid user
    #Pass Execution    Hello World
    Create Session    ${ALIAS}    ${BASE_URL_GITHUB}    verify=${VERIFY_SSL}    proxy=${PROXY}
    ${response}    Get Request    ${ALIAS}    ${VALID_USER}   
    Should Be Equal As Strings    ${response.status_code}    200 