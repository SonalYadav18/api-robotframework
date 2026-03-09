*** Settings ***
Documentation     Megatrends Resource Accessibility Tests
Resource          ../../resources/api.resource


*** Variables ***
${SITRA_BASE_URL}              https://www.sitra.fi
${GARTNER_BASE_URL}            https://www.gartner.com
${RESEARCHGATE_BASE_URL}       https://www.researchgate.net
${FUTURESPLATFORM_BASE_URL}    https://www.futuresplatform.com
${HAAGAHELIA_BASE_URL}         https://haagahelia-my.sharepoint.com


*** Test Cases ***
Get Sitra Megatrends Overview Page
    Create Session    sitra    ${SITRA_BASE_URL}    verify=False
    ${response}=      GET On Session    sitra    /en/foresight/megatrends/
    Log To Console    ${response.status_code}
    Log To Console    ${response.url}

    #Validation
    ${status_code}=    Convert To String    ${response.status_code}
    Should Be Equal    ${status_code}    200

Get Sitra Megatrends 2023 News Article
    Create Session    sitra    ${SITRA_BASE_URL}    verify=False
    ${response}=      GET On Session    sitra    /en/news/megatrends-2023-these-are-the-trends-we-cannot-ignore/
    Log To Console    ${response.status_code}
    Log To Console    ${response.url}

    #Validation
    ${status_code}=    Convert To String    ${response.status_code}
    Should Be Equal    ${status_code}    200

Get Sitra Digital Megatrend Cards Tool
    Create Session    sitra    ${SITRA_BASE_URL}    verify=False
    ${response}=      GET On Session    sitra    /en/tool/digital-megatrend-cards/
    Log To Console    ${response.status_code}
    Log To Console    ${response.url}

    #Validation
    ${status_code}=    Convert To String    ${response.status_code}
    Should Be Equal    ${status_code}    200

Get Sitra Getting To Grips With A Trend Tool
    Create Session    sitra    ${SITRA_BASE_URL}    verify=False
    ${response}=      GET On Session    sitra    /en/tool/getting-to-grips-with-a-trend/
    Log To Console    ${response.status_code}
    Log To Console    ${response.url}

    #Validation
    ${status_code}=    Convert To String    ${response.status_code}
    Should Be Equal    ${status_code}    200

Get Sitra Futures Barometer Finns Confidence Article
    Create Session    sitra    ${SITRA_BASE_URL}    verify=False
    ${response}=      GET On Session    sitra    /en/news/futures-barometer-finns-confidence-in-the-future-has-not-faltered-even-amidst-crises/
    Log To Console    ${response.status_code}
    Log To Console    ${response.url}

    #Validation
    ${status_code}=    Convert To String    ${response.status_code}
    Should Be Equal    ${status_code}    200

Get Sitra What Is A Weak Signal Article
    Create Session    sitra    ${SITRA_BASE_URL}    verify=False
    ${response}=      GET On Session    sitra    /en/articles/what-is-a-weak-signal/
    Log To Console    ${response.status_code}
    Log To Console    ${response.url}

    #Validation
    ${status_code}=    Convert To String    ${response.status_code}
    Should Be Equal    ${status_code}    200

Get Sitra Futures Triangle Tool
    Create Session    sitra    ${SITRA_BASE_URL}    verify=False
    ${response}=      GET On Session    sitra    /en/tool/the-futures-triangle/
    Log To Console    ${response.status_code}
    Log To Console    ${response.url}

    #Validation
    ${status_code}=    Convert To String    ${response.status_code}
    Should Be Equal    ${status_code}    200

Get Sitra Futures Barometer 2025 Article
    Create Session    sitra    ${SITRA_BASE_URL}    verify=False
    ${response}=      GET On Session    sitra    /en/news/futures-barometer-2025-finns-confidence-in-future-plummets-trust-in-local-and-regional-democracy-on-shaky-ground/
    Log To Console    ${response.status_code}
    Log To Console    ${response.url}

    #Validation
    ${status_code}=    Convert To String    ${response.status_code}
    Should Be Equal    ${status_code}    200

Get Sitra Futures Barometer Coronavirus Article
    Create Session    sitra    ${SITRA_BASE_URL}    verify=False
    ${response}=      GET On Session    sitra    /en/news/futures-barometer-the-coronavirus-has-affected-finns-prospects-for-the-future-peoples-faith-in-the-future-depends-heavily-on-their-livelihood/
    Log To Console    ${response.status_code}
    Log To Console    ${response.url}

    #Validation
    ${status_code}=    Convert To String    ${response.status_code}
    Should Be Equal    ${status_code}    200

Get Gartner High Tech Industries Page
    Create Session    gartner    ${GARTNER_BASE_URL}    verify=False
    ${response}=      GET On Session    gartner    /en/industries/high-tech
    Log To Console    ${response.status_code}
    Log To Console    ${response.url}

    #Validation
    ${status_code}=    Convert To String    ${response.status_code}
    Should Be Equal    ${status_code}    200

Get ResearchGate Futures Triangle Figure
    Create Session    researchgate    ${RESEARCHGATE_BASE_URL}    verify=False
    ${response}=      GET On Session    researchgate    /figure/THE-FUTURES-TRIANGLE-PULL-OF-THE-FUTURE_fig2_332706079
    Log To Console    ${response.status_code}
    Log To Console    ${response.url}

    #Validation
    ${status_code}=    Convert To String    ${response.status_code}
    Should Be Equal    ${status_code}    200

Get FuturesPlatform S-Curve Analysis Article
    Create Session    futuresplatform    ${FUTURESPLATFORM_BASE_URL}    verify=False
    ${response}=      GET On Session    futuresplatform    /blog/s-curve-analysis-foresight
    Log To Console    ${response.status_code}
    Log To Console    ${response.url}

    #Validation
    ${status_code}=    Convert To String    ${response.status_code}
    Should Be Equal    ${status_code}    200

Get Haaga-Helia SharePoint Futures PDF Document
    ${onedrive_path}=    Set Variable    /personal/h01383_haaga-helia_fi/_layouts/15/onedrive.aspx?id=%2Fpersonal%2Fh01383_haaga-helia_fi%2FDocuments%2F6.%20TKI2HM003%20Tulevaisuuksien%20tutkimus%2FMegatrendit%2FFuturesKuosaFSSF.pdf&parent=%2Fpersonal%2Fh01383_haaga-helia_fi%2FDocuments%2F6.%20TKI2HM003%20Tulevaisuuksien%20tutkimus%2FMegatrendit&ga=1
    Create Session    haagahelia    ${HAAGAHELIA_BASE_URL}    verify=False
    ${response}=      GET On Session    haagahelia    ${onedrive_path}
    Log To Console    ${response.status_code}
    Log To Console    ${response.url}

    #Validation - SharePoint returns 200 for the sign-in redirect page
    ${status_code}=    Convert To String    ${response.status_code}
    Should Be Equal    ${status_code}    200
