*** Settings ***
Library    Collections
*** Keywords ***
Exibir numeros pares
...    ${contardor}    Set Variable    0    

       ${numero_par}    Create List    

    FOR    ${num}    IN RANGE    11  
        ${numero_é_par}    Evaluate    ${num} % 2 == 0  
        Run Keyword If    ${numero_é_par}   Run Keyword     Append To List    ${numero_par}    ${num}   
 
    END    

    Log To Console    \n

    Log To Console    Numeros pares: ${numero_par}