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



*** Keywords ***
    
## To open browser using custom webdriver (behind proxy in this case)
Open browser using webdriver
	${proxy} 	Evaluate 	sys.modules['selenium.webdriver'].Proxy() 	sys, selenium.webdriver
	${proxy.http_proxy} 	Set Variable 	${my_proxy}	
	Create Webdriver 	${browser}    proxy=${proxy}
