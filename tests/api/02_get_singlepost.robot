*** Settings ***
Resource          ../../resources/api.resource


*** Test Cases ***
Get All Posts
    Create Session    mysession    ${BASE_URL}  
    ${response}=      GET On Session    mysession    /posts/1
    log to console    ${response.status_code}
    log to console    ${response.content}

    #Validation
    ${status_code}=    convert to string    ${response.status_code} 
    should be equal    ${status_code}    200

   


