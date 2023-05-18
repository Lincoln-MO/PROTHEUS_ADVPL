#INCLUDE "protheus.ch"

/*/{Protheus.doc} macroexe
Exercicio para aprender o basico de advpl, trabalhando com vetores.

@author Lincoln Martins de Oliveira

@type Teste
@since 04/05/2023
@version 1.0
/*/

Static aMeses := {"Janeiro", "Fevereiro", "Março", "Abril", "Maio", "Junho", "Julho", "Agosto", "Setembro", "Outubro", "Novembro", "Dezembro"}


User Function AULA03()
    // retornaMes(10)
    retornaMes(17)
    // retornaMes(2)

    listaMeses(7)
Return


Static Function retornaMes(nI)
    If nI < 1 .Or. nI > Len(aMeses)
        FwAlertError("Valor '" + AllTrim(Str(nI)) + "' não corresponde a um mês válido.", "Invalido")
    Else 
        FwAlertSuccess(aMeses[nI], "Mês")
    EndIf 
Return 


Static Function listaMeses(nParada)
    Local nI

    For nI := 1 To Len(aMeses)
        If nI > nParada
            Exit
        EndIf 

        FwAlertSuccess(aMeses[nI], "Mês")
    Next nI 
Return 
