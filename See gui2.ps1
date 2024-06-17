
Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing

$FormObject = [System.Windows.Forms.Form]
$LabelObject = [System.Windows.Forms.Label]
$ButtonObject = [System.Windows.Forms.Button]
$ComboBoxObject = [System.Windows.Forms.ComboBox]
$CheckboxObject = [System.Windows.Forms.CheckBox]
$TabPageObject = [System.Windows.Forms.TabPage]
$TabControlObject = [System.Windows.Forms.TabControl]
$TextBoxObject = [System.Windows.Forms.Textbox]

#Set up base form
$RajarForm=New-Object $FormObject
$RajarForm.ClientSize='500,300'
$RajarForm.Text='GUI Toolkit'
$RajarForm.BackColor="#ffffff"

#Building the form
$lbltitle=New-Object $LabelObject
$lbltitle.Text='THIS ACTION CAN NOT BE UNDONE!!1 '
$lbltitle.AutoSize=$true
$lbltitle.Font='Verdana, 10, style=Bold'
$lbltitle.ForeColor='red'
$lbltitle.Location=New-Object System.Drawing.Point(220,20)

$lbltitle2=New-Object $LabelObject
$lbltitle2.Text='Applications '
$lbltitle2.AutoSize=$true
$lbltitle2.Font='Verdana, 14, style=Bold'
$lbltitle2.Location=New-Object System.Drawing.Point(10,10)

$lbltitle3=New-Object $LabelObject
$lbltitle3.Text='Rename the pc '
$lbltitle3.AutoSize=$true
$lbltitle3.Font='Verdana, 14, style=Bold'
$lbltitle3.Location=New-Object System.Drawing.Point(10,10)

$ddlService=New-Object $ComboBoxObject
$ddlService.width='300'
$ddlService.Location=New-Object System.Drawing.Point(10,10) 

#Load the drop down list for services
Get-Service | ForEach-Object {$ddlService.Items.Add($_.Name)}

$ddlService.text='Pick a service lollpea'

$lblForName=New-Object $LabelObject
$lblForName.Text='Service Friendly Name :'
$lblForName.AutoSize=$true
$lblForName.Location=New-Object System.Drawing.Point(20,30)

$lblName=New-Object $LabelObject
$lblName.Text='test'
$lblName.AutoSize=$true
$lblName.Location=New-Object System.Drawing.Point(240,40)

$lblForStatus=New-Object $LabelObject
$lblForStatus.Text='Status :'
$lblForStatus.AutoSize=$true
$lblForStatus.Location=New-Object System.Drawing.Point(20,50)

$lblStatus=New-Object $LabelObject
$lblStatus.Text=''
$lblStatus.AutoSize=$true
$lblStatus.Location=New-Object System.Drawing.Point(240,60)

##Nuppud

#Prügikasti tühjendamise nupp
$btnHello=New-Object $ButtonObject
$btnHello.Text='Clear your trashbin'
$btnHello.AutoSize=$true
$btnHello.Font='Verdana,14'
$btnHello.Location=New-Object System.Drawing.Point(10,10)

#Temp failide kustutamise nupp
$btnTemp=New-Object $ButtonObject
$btnTemp.Text='Delete temporary files'
$btnTemp.AutoSize=$true
$btnTemp.Font='Verdana,14'
$btnTemp.Location=New-Object System.Drawing.Point(10,60)

#Bloatwarei kustutamise nupp
$btnBloatware=New-Object $ButtonObject
$btnBloatware.Text='Kill bloatware'
$btnBloatware.AutoSize=$true
$btnBloatware.Font='Verdana,14'
$btnBloatware.Location=New-Object System.Drawing.Point(10,110)

#Windowse uuendamise nupp
$btnUpdate=New-Object $ButtonObject
$btnUpdate.Text='Update the windows'
$btnUpdate.AutoSize=$true
$btnUpdate.Font='Verdana,14'
$btnUpdate.Location=New-Object System.Drawing.Point(10,160)

#Shutdown nupp
$btnDown=New-Object $ButtonObject
$btnDown.Text='Shut the down'
$btnDown.AutoSize=$true
$btnDown.Font='Verdana,14'
$btnDown.Location=New-Object System.Drawing.Point(10,210)

#Restart nupp
$btnReboot=New-Object $ButtonObject
$btnReboot.Text='Restart the computer'
$btnReboot.AutoSize=$true
$btnReboot.Font='Verdana,14'
$btnReboot.Location=New-Object System.Drawing.Point(10,270)

$btnLogout=New-Object $ButtonObject
$btnLogout.Text='Go to sleep'
$btnLogout.AutoSize=$true
$btnLogout.Font='Verdana,14'
$btnLogout.Location=New-Object System.Drawing.Point(10,330)

$btnForce=New-Object $ButtonObject
$btnForce.Text='Force the down'
$btnForce.AutoSize=$true
$btnForce.Font='Verdana,14'
$btnForce.Location=New-Object System.Drawing.Point(10,390)

$btnTime=New-Object $ButtonObject
$btnTime.Text='Change the timezone to the eesti'
$btnTime.AutoSize=$true
$btnTime.Font='Verdana,14'
$btnTime.Location=New-Object System.Drawing.Point(10,510)

$btnDownload=New-Object $ButtonObject
$btnDownload.Text='Download applications'
$btnDownload.AutoSize=$true
$btnDownload.Font='Verdana,14'
$btnDownload.Location=New-Object System.Drawing.Point(10,350)

$btnHyperV=New-Object $ButtonObject
$btnHyperV.Text='Enable HyperV'
$btnHyperV.AutoSize=$true
$btnHyperV.Font='Verdana,14'
$btnHyperV.Location=New-Object System.Drawing.Point(10,450)

$btnRename=New-Object $ButtonObject
$btnRename.Text='Rename'
$btnRename.AutoSize=$true
$btnRename.Font='Verdana,14'
$btnRename.Location=New-Object System.Drawing.Point(10,80)




##Checkboxid

$checkboxFirefox=New-Object $CheckboxObject 
$checkboxFirefox.Text= "Firefox"
$checkboxFirefox.AutoSize=$true
$checkboxFirefox.Font='Verdana,14'
$checkboxFirefox.Location=New-Object System.Drawing.Point(10,70)

$checkbox7zip=New-Object $CheckboxObject 
$checkbox7zip.Text= "7Zip"
$checkbox7zip.AutoSize=$true
$checkbox7zip.Font='Verdana,14'
$checkbox7zip.Location=New-Object System.Drawing.Point(10,130)

$checkboxChrome=New-Object $CheckboxObject 
$checkboxChrome.Text= "Chrome"
$checkboxChrome.AutoSize=$true
$checkboxChrome.Font='Verdana,14'
$checkboxChrome.Location=New-Object System.Drawing.Point(10,190)

$checkboxVisual=New-Object $CheckboxObject 
$checkboxVisual.Text= "Visual Studio Code"
$checkboxVisual.AutoSize=$true
$checkboxVisual.Font='Verdana,14'
$checkboxVisual.Location=New-Object System.Drawing.Point(10,250)

$checkboxPutty=New-Object $CheckboxObject 
$checkboxPutty.Text= "Putty"
$checkboxPutty.AutoSize=$true
$checkboxPutty.Font='Verdana,14'
$checkboxPutty.Location=New-Object System.Drawing.Point(10,310)

#Textbox

$textboxRename=New-Object $TextBoxObject
$textboxRename.Text= ""
$textboxRename.AutoSize=$true
$textboxRename.Font='Verdana,14'
$textboxRename.Location=New-Object System.Drawing.Point(10,40)


$RajarForm.Controls.AddRange(@($lbltitle,$lbltitle2,$lblForName,$lblName,$lblForStatus,$lblStatus,$btnHello,$btnTemp,$ddlService,$btnBloatware,$btnUpdate,$btnDown,$btnReboot,$btnLogout,$btnDownload,$checkboxFirefox,$checkbox7zip,$checkboxChrome,$checkboxVisual,$checkboxPutty))

#TabControl
$TabControl=New-Object $TabControlObject
$TabControl.Size='1260,1000'
$TabControl.Location=New-Object System.Drawing.Point(10,10)
$TabControl.TabPages.AddRange(@($TabPage1, $TabPage2,$TabPage3,$TabPage4))
$TabPage1.Controls.AddRange(@($lbltitle,$btnHello,$btnTemp,$btnBloatware,$btnUpdate,$btnDown,$btnReboot,$btnLogout,$btnSleep,$btnForce,$btnTime,$btnHyperV))
$TabPage2.Controls.AddRange(@($ddlService,$lblForName,$lblName,$lblForStatus,$lblStatus))
$TabPage3.Controls.AddRange(@($checkboxFirefox,$checkbox7zip,$checkboxChrome,$checkboxPutty,$checkboxVisual,$btnDownload,$lbltitle2))
$TabPage4.Controls.AddRange(@($textboxRename,$lbltitle3,$btnRename))

$TabPage1 = New-Object $TabPageObject
$TabPage1.Text="Main Tools"
$TabPage2=New-Object $TabPageObject
$TabPage2.Text="Services"
$TabPage3=New-Object $TabPageObject
$TabPage3.Text="Checkboxes"
$TabPage4=New-Object $TabPageObject
$TabPage4.Text="Rename"

#TabControl Form
$RajarForm.Controls.Add($TabControl)

##Logic Section/Functions

##Add the functions to the form
$btnHello.Add_Click({Clear-RecycleBin -force})
$btnTemp.Add_Click({Remove-Item -Path $env:TEMP -Recurse -Force})
$btnBloatware.Add_Click({Get-Appxpackage "Microsoft.SkypeApp" remove-appxpackage}) 
$btnUpdate.Add_Click({Install-WindowsUpdate})
$btnDown.Add_Click({shutdown /s})
$btnReboot.Add_Click({shutdown /r})
$btnSleep.Add_Click({rundll32.exe powrprof.dll,SetSuspendState 0,1,0})
$btnForce.Add_Click({shutdown /f})
$btnRename.Add_Click({})
$btnHyperV.Add_Click({Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V -All])
$btnTime.Add_Click({Set-TimeZone -Id "FLE Standard Time"})
$btnDownload.Add_Click({
    if ($checkboxFirefox.Checked) {
        Start-Process -FilePath "https://ninite.com/firefox/ninite.exe"
    }
    if ($checkbox7zip.Checked) {
        Start-Process -FilePath "https://ninite.com/7zip/ninite.exe"
    }
    if ($checkboxChrome.Checked) {
        Start-Process -FilePath "https://ninite.com/chrome/ninite.exe"
    }
    if ($checkboxVisual.Checked) {
        Start-Process -FilePath "https://ninite.com/vscode/ninite.exe"
    }
    if ($checkboxPutty.Checked) {
        Start-Process -FilePath "https://ninite.com/putty/ninite.exe"
    }   
})
$TabPage3.Controls.Add($lbltitle2,$checkboxFirefox,$checkbox7zip,$checkboxChrome,$checkboxVisual,$checkboxPutty)
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

#Display the form
$RajarForm.ShowDialog()

##Cleans up the form
$RajarForm.Dispose()