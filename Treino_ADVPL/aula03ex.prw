#INCLUDE "protheus.ch"

/*/{Protheus.doc} macroexe
Exercicio para aprender o basico de advpl, trabalhando com vetores.

@author Lincoln Martins de Oliveira

@type Teste
@since 04/05/2023
@version 1.0
/*/

Static aMeses := {"Janeiro", "Fevereiro", "Mar�o", "Abril", "Maio", "Junho", "Julho", "Agosto", "Setembro", "Outubro", "Novembro", "Dezembro"}


User Function AULA03()
    // retornaMes(10)
    retornaMes(17)
    // retornaMes(2)

    listaMeses(7)
Return


Static Function retornaMes(nI)
    If nI < 1 .Or. nI > Len(aMeses)
        FwAlertError("Valor '" + AllTrim(Str(nI)) + "' n�o corresponde a um m�s v�lido.", "Invalido")
    Else 
        FwAlertSuccess(aMeses[nI], "M�s")
    EndIf 
Return 


Static Function listaMeses(nParada)
    Local nI

    For nI := 1 To Len(aMeses)
        If nI > nParada
            Exit
        EndIf 

        FwAlertSuccess(aMeses[nI], "M�s")
    Next nI 
Return 
