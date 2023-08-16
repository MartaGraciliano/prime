*** Keywords ***
Exibir Frutas

    [Arguments]    ${frutas}

    FOR    ${fruta}    IN    @{frutas}  

         Log To Console        \n

        Log To Console      ${fruta} 

    END