
*** Settings ***

Library     String

*** Variables ***

&{PESSOA}           nome=Marta  idade=45  rua=Deputado Romeu Natal    numero=123  cep=26.600-000    bairro=Lages    cidade=Paracambi   estado=RJ


*** Test Case ***

...  Exibir os dados de uma pessoa no Console

...  Exibir o dicionario no console


*** Keywords ***

Exibir o dicionario no console

     Log to console  Dados da Pessoa:

     Log to console  Nome: ${PESSOA.nome}

     Log to console  Idade: ${PESSOA.idade}

     Log to console  Rua: ${PESSOA.rua}

     Log to console  Numero: ${PESSOA.numero}

     Log to console  Cep: ${PESSOA.cep}

     Log to console  Bairro: ${PESSOA.bairro}

     Log to console  Cidade: ${PESSOA.cidade}

     Log to console  Sp: ${PESSOA.estado}

     


 