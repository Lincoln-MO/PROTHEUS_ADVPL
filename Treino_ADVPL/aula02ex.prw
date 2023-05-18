#INCLUDE "protheus.ch"

/*/{Protheus.doc} macroexe
Exercicio para aprender o basico de advpl.

@author Lincoln Martins de Oliveira

@type Teste
@since 28/04/2023
@version 1.0
/*/

User Function AULA02()
    FwAlertInfo( verificaMultiplo(2, 4) , "Resposta")
    FwAlertWarning( verificaMultiplo(1, 4) , "Resposta")
    FwAlertError( verificaMultiplo(6, 3) , "Resposta")
    FwAlertSuccess( verificaMultiplo(7, 70) , "Resposta")
    FwAlertYesNo( verificaMultiplo(7, 45) , "Resposta")
    FwAlertNoYes( verificaMultiplo(34, 400) , "Resposta")
Return


// Static Function verificaMultiplo(nA, nB)
// Return nA % nB == 0 .Or. nB % nA == 0

Static Function verificaMultiplo(nA, nB)
    Local cResposta

    cResposta := "nA: " + AllTrim( Str(nA) ) + "   nB: " + AllTrim( Str(nB) )

    If nA % nB == 0 .Or. nB % nA == 0
        cResposta += "  -  São multiplos"
    Else 
        cResposta += "  -  Não são multiplos"
    EndIf
Return cResposta
