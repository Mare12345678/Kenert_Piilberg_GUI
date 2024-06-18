
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

#Seadistage alusvorm
$RajarForm=New-Object $FormObject
$RajarForm.ClientSize='1000,600'
$RajarForm.Text='GUI Toolkit'
$RajarForm.BackColor="#ffffff"

#Vormi ehitamine
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

#Laadige teenuste rippmenüü
Get-Service | ForEach-Object {$ddlService.Items.Add($_.Name)}

$ddlService.text='Pick a service lollpea'

$lblForName=New-Object $LabelObject
$lblForName.Text='Service Friendly Name :'
$lblForName.Font='Verdana, 14, style=Bold'
$lblForName.Location=New-Object System.Drawing.Point(20,30)

$lblName=New-Object $LabelObject
$lblName.Text=''
$lblName.Font='Verdana, 14, style=Bold'
$lblName.Location=New-Object System.Drawing.Point(240,40)

$lblForStatus=New-Object $LabelObject
$lblForStatus.Text='Status :'
$lblForStatus.Font='Verdana, 14, style=Bold'
$lblForStatus.Location=New-Object System.Drawing.Point(20,50)

$lblStatus=New-Object $LabelObject
$lblStatus.Text=''
$lblStatus.Font='Verdana, 14, style=Bold'
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

#Väljalogimis nupp
$btnSleep=New-Object $ButtonObject
$btnSleep.Text='Go to sleep'
$btnSleep.AutoSize=$true
$btnSleep.Font='Verdana,14'
$btnSleep.Location=New-Object System.Drawing.Point(10,330)

#Force shutdown nupp
$btnForce=New-Object $ButtonObject
$btnForce.Text='Force the down'
$btnForce.AutoSize=$true
$btnForce.Font='Verdana,14'
$btnForce.Location=New-Object System.Drawing.Point(10,390)

#Timezone nupp
$btnTime=New-Object $ButtonObject
$btnTime.Text='Change the timezone to FLE Standard Time'
$btnTime.AutoSize=$true
$btnTime.Font='Verdana,14'
$btnTime.Location=New-Object System.Drawing.Point(10,510)

#Rakenduse nupp
$btnDownload=New-Object $ButtonObject
$btnDownload.Text='Download applications'
$btnDownload.AutoSize=$true
$btnDownload.Font='Verdana,14'
$btnDownload.Location=New-Object System.Drawing.Point(10,350)

#HyperV nupp
$btnHyperV=New-Object $ButtonObject
$btnHyperV.Text='Enable HyperV'
$btnHyperV.AutoSize=$true
$btnHyperV.Font='Verdana,14'
$btnHyperV.Location=New-Object System.Drawing.Point(10,450)

#Arvuti ümbernimetamise nupp
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

#Tekstkastid

$textboxRename=New-Object $TextBoxObject
$textboxRename.Text= ""
$textboxRename.AutoSize=$true
$textboxRename.Font='Verdana,14'
$textboxRename.Location=New-Object System.Drawing.Point(10,40)

#CLI kast output
$textboxOutput=New-Object $TextBoxObject
$textboxOutput.AutoSize=$true
$textboxOutput.Font='Verdana,14'
$textboxOutput.Multiline = $true
$textboxOutput.ReadOnly = $true
$textboxOutput.ScrollBars = 'Vertical'
$textboxOutput.Size = New-Object System.Drawing.Size(580,400)
$textboxOutput.Location=New-Object System.Drawing.Point(10,10)

#CLI kast input
$textboxInput=New-Object $TextBoxObject
$textboxInput.Size = New-Object System.Drawing.Size(580,20)
$textboxInput.Location = New-Object System.Drawing.Point(10,420) 

# Funktsioon, mis voimaldab kaskude taitmise
function Execute-Command {
    param (
        [string]$command
    )
    
    # Käsk jookseb
    $output = Invoke-Expression $command 2>&1
    
    # Uuendab outputi
    $textboxOutput.AppendText("PS> $command`r`n")
    $textboxOutput.AppendText("$output`r`n")
    $textboxOutput.ScrollToCaret()
    
    # Teeb input kasti tühjaks peale enteri vajutamist
    $textboxInput.Text = ''
}

# Teksti sisestamise kastil teeb asju, kui vajutad enterit
$textboxInput.Add_KeyDown({
    param (
        [System.Object]$sender,
        [System.Windows.Forms.KeyEventArgs]$e
    )
    
    if ($e.KeyCode -eq [System.Windows.Forms.Keys]::Enter) {
        Execute-Command -command $textboxInput.Text
        $e.SuppressKeyPress = $true
    }
})

#Skripti koht
$cli_textbox = New-Object $TextBoxObject
$cli_textbox.Text='Sisesta oma skript siia'
$cli_textbox.Font=$TextFont
$cli_textbox.Location=New-Object System.Drawing.Point(30,30)
$cli_textbox.Size=New-Object System.Drawing.Size(530,130)
$cli_textBox.Multiline=$true
$cli_textBox.ScrollBars='Vertical'
$cli_textBox.WordWrap=$true
$cli_textbox.ForeColor='#ffffff'
$cli_textbox.BackColor='#fadadd'

$PsGuiTab3.Controls.Add($cli_textbox)

$cli_output = New-Object $TextBoxObject
$cli_output.Text='Väljund'
$cli_output.Font=$TextFont
$cli_output.Location=New-Object System.Drawing.Point(30, 210)
$cli_output.Size=New-Object System.Drawing.Size(530,130)
$cli_output.Multiline=$true
$cli_output.ScrollBars='Vertical'
$cli_output.WordWrap=$true
$cli_output.ForeColor='#ffffff'
$cli_output.BackColor='#fadadd'
$PsGuiTab3.Controls.Add($cli_output)

$cli_run_script_button=New-Object $ButtonObject
$cli_run_script_button.Text='Stardi skript'
$cli_run_script_button.AutoSize=$true
$cli_run_script_button.Font=$TextFont
$cli_run_script_button.ForeColor='#ffffff'
$cli_run_script_button.Location=New-Object System.Drawing.Point(30,170)
$PsGuiTab3.Controls.Add($cli_run_script_button)

# Jooksutab tekstikastis oleva skripti powershellis
function RunScript{
    $custom_script = $cli_textbox.Text
    $cli_output.Text = Invoke-Expression -Command $custom_script
}
$cli_run_script_button.Add_Click({RunScript})

$PsGuiTabs.TabPages.Add($PsGuiTab3)

#Tabi kontroll
$TabControl=New-Object $TabControlObject
$TabControl.Size='1260,1000'
$TabControl.Location=New-Object System.Drawing.Point(10,10)
$TabControl.TabPages.AddRange(@($TabPage1, $TabPage2,$TabPage3,$TabPage4,$TabPage5,$TabPage6))
$TabPage1.Controls.AddRange(@($lbltitle,$btnHello,$btnTemp,$btnBloatware,$btnUpdate,$btnDown,$btnReboot,$btnSleep,$btnForce,$btnTime,$btnHyperV))
$TabPage2.Controls.AddRange(@($ddlService,$lblForName,$lblName,$lblForStatus,$lblStatus))
$TabPage3.Controls.AddRange(@($checkboxFirefox,$checkbox7zip,$checkboxChrome,$checkboxPutty,$checkboxVisual,$btnDownload,$lbltitle2))
$TabPage4.Controls.AddRange(@($textboxRename,$lbltitle3,$btnRename))
$TabPage5.Controls.AddRange(@($textboxOutput,$textboxInput,$output,$command))
$TabPage6.Controls.AddRange(@($cli_output,$cli_textbox,$PsGuiTab3,$cli_run_script_button))

$TabPage1=New-Object $TabPageObject
$TabPage1.Text="Main Tools"
$TabPage1.BackColor="#2986cc"
$TabPage2=New-Object $TabPageObject
$TabPage2.Text="Services"
$TabPage2.BackColor="#b3d9ff"
$TabPage3=New-Object $TabPageObject
$TabPage3.Text="Checkboxes"
$TabPage3.BackColor="#94b1ff"
$TabPage4=New-Object $TabPageObject
$TabPage4.Text="Rename"
$TabPage4.BackColor="#9aceeb"
$TabPage5=New-Object $TabPageObject
$TabPage5.Text="CLI"
$TabPage5.BackColor="#93e9be"
$TabPage6=New-Object $TabPageObject
$TabPage6.Text="Script"
$TabPage6.BackColor="#f08080"

#Tabi vorm
$RajarForm.Controls.Add($TabControl)

##Loogika koht

##Vormile funktsioonid
$btnHello.Add_Click({Clear-RecycleBin -force})
$btnTemp.Add_Click({Remove-Item -Path $env:TEMP -Recurse -Force})
$btnBloatware.Add_Click({function removeBloatware {
    $Junk = "xbox|phone|disney|skype|groove|solitaire|zune|mixedreality|tiktok|adobe|prime|soundrecorder|bingweather!3dviewer"
    $packages = Get-AppxPackage -AllUsers | Where-Object { $_.Name-match $Junk } | Where-Object -Property NonRemovable -eq $false
    foreach ($appx in $packages) {
        "Removing {0}" -f $appx.name
        Remove-AppxPackage $appx -AllUsers
    }    
}})
$btnUpdate.Add_Click({Install-WindowsUpdate})
$btnDown.Add_Click({shutdown /s})
$btnReboot.Add_Click({shutdown /r})
$btnSleep.Add_Click({[System.Windows.Forms.Application]::SetSuspendState([System.Windows.Forms.PowerState]::Suspend, $false, $true)})
$btnForce.Add_Click({function ForceFully-ShutDownComputer {
                         Stop-Computer -ComputerName localhost
                    }})
$btnRename.Add_Click({$newName = $txtRename.Text
    if ($newName -ne "") {
    #Muuda arvuti nimi ära
    Rename-Computer -NewName $newName -Force -Restart
    }
})  
$btnHyperV.Add_Click({Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V -All})
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

##Lisage funktsioone
$ddlService.Add_SelectedIndexChanged({GetServiceDetails})

#Kuva vormi
$RajarForm.ShowDialog()

##Puhastab vormi
$RajarForm.Dispose()
