Add-Type -AssemblyName PresentationFramework

$xamlFile="C:\Users\Kenert\Documents\MainWindow.xaml"

$inputXAML=Get-Content -Path $xamlFile -Raw 
$inputXAML=$inputXAML -replace 'mc:Ignorable="d"','' -replace "x:N","N" -replace '^<Win.*','<Window'
[XML]$XAML=$inputXAML

$reader = New-Object System.Xml.XmlNodeReader $XAML
try{
    $psform=[Windows.Markup.XamlReader]::Load($reader)
}catch{
    Write-Host $_.Exception
    throw 
}

$xaml.selectNodes("//*[@Name]") | ForEach-Object {
    try{
        Set-Variable -Name "var_$($_.Name)" -Value $psform.FindName($_.Name) -ErrorAction Stop
    }catch{
        throw
    }

}

Get-Variable var_*

Get-Service | ForEach-Object {$var_ddlServices.Items.Add($_.Name)}

function GetDetails{
    $ServiceName=$var_ddlServices.SelectedItem
    $details=Get-Service -Name $ServiceName | select *
    $var_lblName.Content=$details.name
    $var_lblStatus.Content=$details.status

    if($var_lblStatus.text -eq 'Running'){
        $var_lblStatus.Foreground='green'

    }else{
       $var_lblStatus.Foregroundr='red'
    }
}          

$var_ddlService.Add_SelectChanged({GetDetails})

$psform.ShowDialog()