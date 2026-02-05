*** Settings ***
Resource    ../../resources/api.resource
Library    Collections

*** Test Cases ***
Post Single Post
    Create session    mysession    ${BASE_URL}    
    ${body}=    Create Dictionary    userId=180       title=This is Sonal Yadav   body=I like name Geet
    ${header}=    Create Dictionary    Content-Type=application/json
    ${response}=    POST On Session    mysession    /posts    json=${body}    headers=${header}

 
    log to console   ${response.status_code}
    log to console    ${response.content}

    #Validations
    ${status_code}=    convert to string     ${response.status_code}
    should be equal    ${status_code}    201

    ${res_body}=    convert to string    ${response.content}
    should contain     ${res_body}    This is Sonal Yadav    