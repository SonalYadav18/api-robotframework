*** Settings ***
Resource    ../../resources/api.resource

*** Test Cases ***
Delete Single Post
    Create Session    mysession    ${BASE_URL}
    ${response}=    DELETE On Session    mysession    /posts/1

    Log To Console    ${response.status_code}
    Log To Console    ${response.content}



    # Validating Response code
    Should Be Equal As Numbers    ${response.status_code}    200

    # Validating response content

   ${res_content}=    convert to string    ${response.content}    
    Should Be Equal     ${res_content}    {}

   #Should be Equal    ${response.content}    {}