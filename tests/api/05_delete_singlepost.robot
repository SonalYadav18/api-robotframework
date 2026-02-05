*** Settings ***
Resource    ../../resources/api.resource

*** Test Cases ***
Delete Single Post
    Create Session    mysession    ${BASE_URL}
    ${response}=    DELETE On Session    mysession    /posts/1

    Log To Console    ${response.status_code}
    Log To Console    ${response.content}

    #Validations
    Should Be Equal As Numbers    ${response.status_code}    200

    Should Be Equal     ${response.content}    {}