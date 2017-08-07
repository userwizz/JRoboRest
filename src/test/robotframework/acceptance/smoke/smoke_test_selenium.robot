*** Settings ***
Resource    ${ROOTDIR}/res/resources.robot

Suite Teardown    Close All Browsers

*** Test Cases ***
Verfiy google search results
    [Tags]    selenium
	Set Remote Web Driver Proxy    ${PROXY_HOST}   ${PROXY_PORT}
	Open Browser    http://google.com    browserName=${BROWSER}
	Go To    http://google.com
	Input Text    name=q    robotFramework
	Submit Form
	Wait Until Page Contains    robotframework.org    5