#INCLUDE "protheus.ch"

/*/{Protheus.doc} macroexe
Exercicio para aprender o basico de advpl, trabalhando com banco de dados.

@author Lincoln Martins de Oliveira

@type Teste
@since 06/05/2023
@version 1.0
/*/

User Function AULA08()


    BTS->(DbSetOrder(1))

    // BTS->(RecLock("BTS", .t.))

    // BTS->BTS_FILIAL := xFilial("BTS")
    // BTS->BTS_MATVID := "00000010"
    // BTS->BTS_NOMUSR := "TESTE AULA08"

    // BTS->(MsUnlock())

    /* 
        INSERT INTO BTS99O(BTS_FILIAL, BTS_MATVID, BTS_NOMUSR, R_E_C_N_O_) VALUES('  ', '00000010', 'TESTE AULA08', 12)
    */


    If BTS->(MsSeek(xFilial("BTS") + "00000010"))
        BTS->(RecLock("BTS", .f.))

        // BTS->BTS_NOMCAR := "AULA08"

        BTS->(DbDelete())

        BTS->(MsUnlock())
    EndIf 

    BTS->(DbCloseArea())

Return 
