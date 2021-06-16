****Settings ***
#Dentro do documentation estará presente informações a respeito do arquivo.
Documentation   Aqui estarão todos os exercícios do Prime Experts focado em Imersão com Robot Framework

*** Variable ***
# Minha primeira variável Simples
${NOME}             David Aquilino

# Minha primeira variável do tipo Dicionário
&{PESSOA}           
...     nome=David      
...     sobrenome=Aquilino      
...     idade=35

# Minha primeira variável do tipo Lista

@{FRUTAS}        Banana      Maçã        Abacaxi         Morango
 

# Minha primeira variável do tipo Dicionário
&{PESSOA2}       
...     nome=David      
...     sobrenome=Aquilino      
...     idade=35
...     cpf=02211133311
...     rg=088223321
...     sexo=masculino


*** Test Case ***

Cenário: Imprimir o dados pessoais
    [Tags]                  dadosp

    Log To Console      ${PESSOA2.nome}
    Log To Console      ${PESSOA2.idade}
    Log To Console      ${PESSOA2.cpf}
    Log To Console      ${PESSOA2.rg}
    Log To Console      ${PESSOA2.sexo}

 Cenário-Frutas: Imprimir o Frutas 
    [Tags] listafrutas 

 #imprime a variavel tipo lista usando "\n + [posicao do array]"
    Log To Console      \n ${FRUTAS}[0] 
    Log To Console      \n ${FRUTAS}[1]
    Log To Console      \n ${FRUTAS}[2]
    Log To Console      \n ${FRUTAS}[3]

 
Cenario: Realizar soma
    [Tags]  SOMA
    ${RESULTADO}    Somar dois numeros  10  30
    Log To Console  ${RESULTADO}

Cenario: Realizar soma  
    [Tags]  SOMA_2
    ${RESULTADO}       Somar dois numeros "55" e "5"
    Log To Console      ${RESULTADO}

Cenario: Imprimir E-mail  
    [Tags]  E-MAIL
${RESULTADO}    Informe david   dantas  34
    Log To Console      ${RESULTADO}

*** Keywords ***
Somar dois numeros
    [Arguments]     ${NUM_A}    ${NUM_B}
    ${SOMA}        Evaluate    ${NUM_A}+${NUM_B} 
    [Return]        ${SOMA}

Somar dois numeros "${NUM_A}" e "${NUM_B}"   
    ${SOMA}        Evaluate    ${NUM_A}+${NUM_B}  
    [Return]        ${SOMA}

Informe  
    [Arguments]     ${nome}    ${sobrenome}    ${idade}    
    ${email} = Catenate     SEPERATOR=_   ${nome}     ${sobrenome}        ${idade}     
    [Return] ${email}

