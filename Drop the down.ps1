Add-Type -AssemblyName System.windows.Forms

$FormObject=[System.Windows.Forms.Form]
$LabelObject=[System.Windows.Forms.Label]
$ComboBoxObject=[System.Windows.Forms.ComboBox]

$DefaultFont='Verdana,12'


##Set up base form
$AppForm=New-Object $FormObject
$AppForm.ClientSize='500,300'
$AppForm.Text='Mare Imakson - Service Inspector'
$AppForm.BackColor='#ffffff'
$AppForm.Font=$DefaultFont

#Building the form
$lblService=New-Object $LabelObject
$lblService.Text='Services :'
$lblService.AutoSize=$true
$lblService.Location=New-Object System.Drawing.Point(20,20)

$ddlService=New-Object $ComboBoxObject
$ddlService.width='300'
$ddlService.Location=New-Object System.Drawing.Point(125,20) 

#Load the drop down list for services
Get-Service | ForEach-Object {$ddlService.Items.Add($_.Name)}

$ddlService.text='Pick a service lollpea'

$lblForName=New-Object $LabelObject
$lblForName.Text='Service Friendly Name :'
$lblForName.AutoSize=$true
$lblForName.Location=New-Object System.Drawing.Point(20,80)

$lblName=New-Object $LabelObject
$lblName.Text='test'
$lblName.AutoSize=$true
$lblName.Location=New-Object System.Drawing.Point(240,80)

$lblForStatus=New-Object $LabelObject
$lblForStatus.Text='Status :'
$lblForStatus.AutoSize=$true
$lblForStatus.Location=New-Object System.Drawing.Point(20,120)

$lblStatus=New-Object $LabelObject
$lblStatus.Text=''
$lblStatus.AutoSize=$true
$lblStatus.Location=New-Object System.Drawing.Point(240,120)

$AppForm.Controls.AddRange(@($lblService, $ddlService,$lblForName,$lblName,$lblForStatus,$lblStatus))

##Add some functions to the form

function GetServiceDetails{
    $ServiceName=$ddlService.selectedItem
    $details=Get-Service -Name $ServiceName | select *
    $lblName.Text=$details.name
    $lblStatus.Text=$details.status

    if($lblStatus.text -eq 'Running'){
        $lblStatus.ForeColor='green'

    }else{
       $lblStatus.ForeColor='red'

    }
}          
##Add functions to the controls

$ddlService.Add_SelectedIndexChanged({GetServiceDetails})

#Show the form
$AppForm.ShowDialog()

##Garbage Collection
$AppForm.Dispose()
