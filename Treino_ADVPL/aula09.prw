#INCLUDE "protheus.ch"
#INCLUDE "fwmvcdef.ch"

/*/{Protheus.doc} macroexe
Exercicio para aprender o basico de advpl, trabalhando com banco de dados. Iniciando Padroes MVC da TotsVs

@author Lincoln Martins de Oliveira

@type Teste
@since 16/06/2023
@version 1.0
/*/ 
//#DEFINE CRLF Chr(13)+Chr(10) //Fim de linha(Chr(13)) e quebra de linha(Chr(10))

User Function AULA09()
    oBrowse := FwMBrowse():New() //Inicialiso a tela
    oBrowse:SetAlias("SA2")
    oBrowse:SetDescription("Teste MVC com a tabela de Fornecedores")
    oBrowse:SetMenuDef("AULA09")
    oBrowse:ForceQuitButton()
    oBrowse:DisableDetails()
    oBrowse:Activate()
return

 Static Function MenuDef()
    Local aMenu := {}

    AADD( aMenu, {"Visualizar", "VIEWDEF.AULA09", 0, MODEL_OPERATION_VIEW, 0, Nil})
    AADD( aMenu, {"Incluir", "VIEWDEF.AULA09", 0, MODEL_OPERATION_INSERT, 0, Nil})
    AADD( aMenu, {"Alterar", "VIEWDEF.AULA09", 0, MODEL_OPERATION_UPDATE, 0, Nil})
    AADD( aMenu, {"Excluir", "VIEWDEF.AULA09", 0, MODEL_OPERATION_DELETE, 0, Nil})
Return aMenu
//Return FWMVCMenu("AULA09")

 Static Function ModelDef()
    Local oStruct := FWFormStruct(1, "SA2")
    Local oModel := Nil

    oModel := MpFormModel():New("AULA09TESTE") //Inicializa o Model, o model n pode ter o mesmo nome da user function
    oModel:AddFields("SA2MASTER",, oStruct)
    oModel:SetPrimaryKey({})
    oModel:SetDescription("Teste MVC")
    oModel:GetModel("SA2MASTER"):SetDescription("Teste SA2 MVC")

Return oModel

 Static Function ViewDef()
    Local oStruct := FWFormStruct(2, "SA2")
    Local oModel := FWLoadModel("AULA09")
    Local oView := Nil

    oView := FwFormView():New()
    oView:SetModel(oModel)
    oView:AddField("VEIW_SA2", oStruct,"SA2MASTER")
    oView:CreateHorizontalBox("FULL", 100)
    oView:SetOwnerView("VEIW_SA2", "FULL")
Return oView
