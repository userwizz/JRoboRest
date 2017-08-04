*** Settings ***
Library    HttpRequestLibrary
Library    Collections
Library    com.mydomain.robot.jrobot.JavaLib
Variables    JavaVariables.java


*** Keywords ***

## Utilize own Java lib
Ping host and verfiy response
    [Arguments]    ${host_to_ping}
    ${response}    Ping host    ${host_to_ping}
    Verify response    ${response}  

