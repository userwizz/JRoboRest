*** Settings ***
Suite Setup    Init suite


*** Keywords ***
Init suite
    Set Global Variable    ${ROOTDIR}    ${CURDIR}
    Set Global Variable    ${PROXY_HOST}    proxy
    Set Global Variable    ${PROXY_PORT}    3128
    Set Global Variable    ${PROXY_AS_DICT}    {'host':'${PROXY_HOST}','protocol':'https', 'port':'${PROXY_PORT}'}
    Set Global Variable    ${BROWSER}    chrome
    
