$rg = "arm-introduction-01"
Get-AzResourceGroup -Name $rg -ErrorVariable rg_not_present -ErrorAction SilentlyContinue
if ($rg_not_present) {
    New-AzResourceGroup -Name $rg -Location koreacentral -Force
}

New-AzResourceGroupDeployment `
    -Name "New-mlws" `
    -ResourceGroupName $rg `
    -TemplateFile "..\MachineLearning\mymlws01.json" `
    -TemplateParameterFile "..\MachineLearning\mymlws01.parameters.json" `
    -SkipTemplateParameterPrompt

    