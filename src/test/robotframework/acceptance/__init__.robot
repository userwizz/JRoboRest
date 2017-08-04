*** Settings ***
Suite Setup    Init suite


*** Keywords ***
Init suite
    Set Global Variable    ${ROOTDIR}    ${CURDIR}
    Set Global Variable    ${PROXY}    {'host':'proxy','protocol':'https', 'port':'3128'}
