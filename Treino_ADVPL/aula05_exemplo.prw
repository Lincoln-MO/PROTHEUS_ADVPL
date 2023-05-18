#INCLUDE "protheus.ch"
#INCLUDE "fileio.ch"

/*/{Protheus.doc} macroexe
Exercicio para aprender o basico de advpl, trabalhando com arquivos.

@author Lincoln Martins de Oliveira

@type Teste
@since 07/05/2023
@version 1.0
/*/

#DEFINE CRLF Chr(13) + Chr(10)


User Function AULA05()
    Local cArquivo := "C:\totvs\aula05.csv"
    Local nHandle
    Local aDados := {}
    Local nI
    // Local nJ
    Local cTexto 

    AAdd(aDados, {"gabriel        ", 29, "analista", "florianopolis", "20230502"})
    AAdd(aDados, {"claudio       ", 0, "dono", "juiz de fora", "20230501"})
    AAdd(aDados, {"joaozinho", 130, "dentista", "sao paulo", "20230503"})

    If File(cArquivo)
        nHandle := FOpen(cArquivo, FO_READWRITE)
    Else 
        nHandle := FCreate(cArquivo)
    EndIf 

    If nHandle != -1 

        For nI := 1 To Len(aDados)

            // cTexto := ""

            // For nJ := 1 To Len(aDados[nI])
            //     cTexto += aDados[nI, nJ]   // aDados[nI][nJ]
            //     cTexto += ";"
            // Next nJ 

            // cTexto += CRLF

            cTexto := AllTrim(aDados[nI, 1]) + ";"
            cTexto += AllTrim(Str(aDados[nI, 2])) + ";"
            cTexto += AllTrim(aDados[nI, 3]) + ";"
            cTexto += AllTrim(aDados[nI, 4]) + ";"
            cTexto += DtoC(StoD(aDados[nI, 5])) + ";"
            cTexto += CRLF

            FSeek(nHandle, 0, FS_END)
            FWrite(nHandle, cTexto)
        Next nI

        FClose(nHandle)
    Else 
        FwAlertError("Falha ao abrir o arquivo '" + AllTrim(cArquivo) + "'", "Aula ADVPL")
    EndIf 
Return 

/*

02/05/2023  // Tipo data D

"02/05/2023" // Tipo caracter C

"20230502"  // Tipo string S


DtoC   02/05/2023 >> "02/05/2023"

DtoS   02/05/2023 >> "20230502"

CtoD  "02/05/2023" >> 02/05/2023

StoD  "20230502" >> 02/05/2023

*/
