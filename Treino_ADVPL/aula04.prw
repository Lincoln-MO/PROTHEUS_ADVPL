#INCLUDE "protheus.ch"

/*/{Protheus.doc} macroexe
Exercicio para aprender o basico de advpl, trabalhando com arquivos.

@author Lincoln Martins de Oliveira

@type Teste
@since 06/05/2023
@version 1.0
/*/

User Function AULA04()
    local cArquivo := "D:\Documentos\Desktop\Aulas_protheus\WorkSpace\aula04.csv"

    if File(cArquivo)
        if Ft_FUse(cArquivo) != -1
            While ! Ft_FEof()
                cLinha := Ft_FReadLn()

                FwAlertSuccess(cLinha, "Aula ADVPL ")

                Ft_FSkip()
            EndDo
            Ft_FUse()
        Else
            FwAlertError("Falha ao abrir arquivo'" + ALLTRIM( cArquivo ) + "'.", "Aula ADVPL")
        EndIf
    Else
         FwAlertError("Arquivo'" + ALLTRIM( cArquivo ) + "'nao existe.", "Aula ADVPL")
    EndIf
Return

