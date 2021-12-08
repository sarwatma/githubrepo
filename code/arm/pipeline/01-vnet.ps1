$rg = "arm-introduction-01"
Get-AzResourceGroup -Name $rg -ErrorVariable rg_not_present -ErrorAction SilentlyContinue
if ($rg_not_present) {
    New-AzResourceGroup -Name $rg -Location koreacentral -Force
}

# New-AzResourceGroupDeployment `
#     -Name "New-vnet" `
#     -ResourceGroupName $rg `
#     -TemplateFile "..\vnet\template_vnet_01.json" `
#     -TemplateParameterFile "..\vnet\template_vnet_01.parameters.json" `
#     -SkipTemplateParameterPrompt

# New-AzResourceGroupDeployment `
#     -Name "New-vm" `
#     -ResourceGroupName $rg `
#     -TemplateFile "..\vm\myvm01.json" `
#     -TemplateParameterFile "..\vm\myvm01.parameters.json" `

New-AzResourceGroupDeployment `
    -Name "New-vm" `
    -ResourceGroupName $rg `
    -TemplateFile "..\vm\myvm01.json" `
    -TemplateParameterFile "..\vm\myvm02.parameters.json" `

    