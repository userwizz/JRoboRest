*** Settings ***
Library    HttpRequestLibrary
Library    Collections

#Variables    ../res/variables.py

*** Variables ***
${ALIAS}    my_alias
${VALID_USER}    userwizz
${BASE_URL_GITHUB}    https://api.github.com/users
${VERIFY_SSL}    True
${PROXY}    {'host':'proxy','protocol':'https', 'port':'3128'}

${json_string}    Set during test
${given_city}    Set during test



#*** Keywords ***

