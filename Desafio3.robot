*** Settings ***
Resource        frutas.robot
Library    String

*** Test Cases ***
Exiba lista de frutas
  ${frutas}         Create List       Uva Banana Manga Goiaba  
    Exiba lista de frutas       ${frutas}

**** Keywords ***
Exiba lista de frutas
    [Arguments]    ${frutas}
    FOR  ${fruta}        IN     @{frutas}
         Log To Console    \n
         Log To Console    ${fruta}
    

    END                       

    

