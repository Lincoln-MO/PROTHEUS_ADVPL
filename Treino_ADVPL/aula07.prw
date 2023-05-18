#INCLUDE "protheus.ch"
/*/{Protheus.doc} macroexe
Exercicio para aprender o basico de advpl, trabalhando com banco de dados.

@author Lincoln Martins de Oliveira

@type Teste
@since 06/05/2023
@version 1.0
/*/

User Function AULA07()


    BTS->(DbSetOrder(1)) // BTS_FILIAL + BTS_MATVID

    // If BTS->(MsSeek( xFilial("BTS") + '00000004' ))
    //     FwAlertSuccess(BTS->BTS_NOMCAR, "Aula ADVPL")
    // Else 
    //     FwAlertError("Dado não encontrado", "Aula ADVPL")
    // EndIf

    BTS->(DbGoTop())

    While ! BTS->(Eof())
        FwAlertSuccess(BTS->BTS_NOMCAR, "Aula ADVPL")

        // BTS->BTS_DATNAS

        BTS->(DbSkip())
    EndDo 

    BTS->(DbCloseArea())

    /*
        SubStr('  00000001', 1, 2) >> BTS_FILIAL = '  '
        SubStr('  00000001', 3, 8) >> BTS_MATVID = '  000001'
    */



Return 
