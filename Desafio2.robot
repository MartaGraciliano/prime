*** Settings ***

Library           Collections

Library           DateTime

*** Test Cases ***

Calcular ano de nascimento

    ${idade}    Set Variable    45

    ${ano_nasc}    Calcular ano de nascimento    ${idade}

    Log To Console    Ano nascimento: ${ano_nasc}

 
*** Keywords ***

Calcular ano de nascimento

    [Arguments]    ${idade}

    ${ano_atual}    Get Current Date    result_format=%Y

    ${ano_nasc}    Evaluate    ${ano_atual} - ${idade}

    Run Keyword If    ${ano_nasc} < 2000

    ...    Log To Console    A pessoa nasceu no seculo passado

    ...    ELSE

    ...    Log To Console    A pessoa nasceu nesse seculo

    [Return]    ${ano_nasc}