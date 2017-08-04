*** Settings ***
Library    String
Resource    ${ROOTDIR}/res/resources.robot


*** Test Cases ***
Response code using valid user
    Create Session    ${ALIAS}    ${BASE_URL_GITHUB}    verify=${VERIFY_SSL}    proxy=${PROXY}
    ${response}    Get Request    ${ALIAS}    ${VALID_USER}   
    Should Be Equal As Strings    ${response.status_code}    200
    
Verify that host is alive
	[Documentation]    Data-driven test, utilizing own Java lib
    [Template]    Ping host and verfiy response
    127.0.0.1
    localhost
    does_not_exists