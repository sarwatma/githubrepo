$rg = "arm-introduction-01"
Get-AzResourceGroup -Name $rg -ErrorVariable notPresent -ErrorAction SilentlyContinue
if ($notPresent)
{
    # ResourceGroup doesn't exist
    New-AzResourceGroup -Name $rg -Location northeurope -Force 
}
else
{
    # ResourceGroup exist
}

New-AzResourceGroupDeployment `
    -Name "new-Storage" `
    -ResourceGroupName $rg `
    -TemplateFile "..\storage\01-storage.json"
    
