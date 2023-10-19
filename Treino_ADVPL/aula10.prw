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

User Function AULA10()
    oBrowse := FwMBrowse():New() //Inicialiso a tela
    oBrowse:SetAlias("SA1")
    oBrowse:SetDescription("Teste MVC com a tabela de Clientes")
    oBrowse:SetMenuDef("AULA")
    oBrowse:ForceQuitButton()
    oBrowse:DisableDetails()
    oBrowse:Activate()
return

 Static Function MenuDef()
    Local aMenu := {}

    AADD( aMenu, {"Visualizar", "VIEWDEF.AULA10", 0, MODEL_OPERATION_VIEW, 0, Nil})
    AADD( aMenu, {"Incluir", "VIEWDEF.AULA10", 0, MODEL_OPERATION_INSERT, 0, Nil})
    AADD( aMenu, {"Alterar", "VIEWDEF.AULA10", 0, MODEL_OPERATION_UPDATE, 0, Nil})
    AADD( aMenu, {"Excluir", "VIEWDEF.AULA10", 0, MODEL_OPERATION_DELETE, 0, Nil})
Return aMenu
//Return FWMVCMenu("AULA09")

 Static Function ModelDef()
    Local oStruct := FWFormStruct(1, "SA1")
    Local oModel := Nil

    oModel := MpFormModel():New("AULA10TESTE") //Inicializa o Model, o model n pode ter o mesmo nome da user function
    oModel:AddFields("SA1MASTER",, oStruct)
    oModel:SetPrimaryKey({})
    oModel:SetDescription("Teste MVC")
    oModel:GetModel("SA1MASTER"):SetDescription("Teste SA1 MVC")

Return oModel

 Static Function ViewDef()
    Local oStruct := FWFormStruct(2, "SA1")
    Local oModel := FWLoadModel("AULA10")
    Local oView := Nil

    oView := FwFormView():New()
    oView:SetModel(oModel)
    oView:AddField("VEIW_SA1", oStruct,"SA1MASTER")
    oView:CreateHorizontalBox("FULL", 100)
    oView:SetOwnerView("VEIW_SA1", "FULL")
Return oView
