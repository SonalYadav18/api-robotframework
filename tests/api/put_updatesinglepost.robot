*** Settings ***
Resource    ../../resources/api.resource
Library    Collections

*** Test Cases ***
Update Single Post
    Create session    mysession    ${BASE_URL}    
    ${body}=    Create Dictionary    userId=180    title=This is Sunny Yadav   body=I like name Preet
    ${header}=    Create Dictionary    Content-Type=application/json
    ${response}=   PUT On Session    mysession    /posts/1    json=${body}    headers=${header}

 
    log to console   ${response.status_code}
    log to console    ${response.content}

    #Validations
    # ${status_code}=    convert to string     ${response.status_code}
    # should be equal    ${status_code}    200
    Should Be Equal As Numbers     ${response.status_code}    200    

    ${res_body}=    convert to string    ${response.content}
    should contain     ${res_body}    This is Sunny Yadav    
