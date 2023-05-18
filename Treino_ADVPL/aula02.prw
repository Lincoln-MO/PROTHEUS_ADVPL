#INCLUDE "protheus.ch"

/*/{Protheus.doc} macroexe
Exercicio para aprender o basico de advpl.

@author Lincoln Martins de Oliveira

@type Teste
@since 28/04/2023
@version 1.0
/*/

User FUNCTION AULA02()
    Local nA
    Local nB
   

    nA := 2
    nB := 4
    
    FwALertInfo( verificaMultiplo(nA, nB) , "Resposta")

   
RETURN

STATIC FUNCTION verificaMultiplo(nA, nB, cResposta)

    cResposta := " nA: " + ALLTRIM( Str(nA) ) + "   nB: " + ALLTRIM( Str(nB) )

    if nA % nB == 0 .or. nB % nA == 0
        cResposta += "  - Sao multiplos"
    Else 
        cResposta += "  - Nao Sao multiplos"
    ENDIF
RETURN
