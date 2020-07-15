[void][System.Reflection.Assembly]::Load('System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a')
[void][System.Reflection.Assembly]::Load('System.Windows.Forms, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089')
$AcuteGit = New-Object -TypeName System.Windows.Forms.Form
[System.ComponentModel.IContainer]$components = $null
[System.Windows.Forms.Button]$update_fork_button = $null
[System.Windows.Forms.ToolTip]$update_fork_tooltip = $null
[System.Windows.Forms.FolderBrowserDialog]$update_fork_folderBrowser = $null
[System.Windows.Forms.Button]$removespace_button = $null
[System.Windows.Forms.FolderBrowserDialog]$removespace_folderBrowser = $null
[System.Windows.Forms.Button]$button1 = $null
function InitializeComponent
{
$components = (New-Object -TypeName System.ComponentModel.Container)
$update_fork_button = (New-Object -TypeName System.Windows.Forms.Button)
$update_fork_tooltip = (New-Object -TypeName System.Windows.Forms.ToolTip -ArgumentList @($components))
$update_fork_folderBrowser = (New-Object -TypeName System.Windows.Forms.FolderBrowserDialog)
$removespace_button = (New-Object -TypeName System.Windows.Forms.Button)
$removespace_folderBrowser = (New-Object -TypeName System.Windows.Forms.FolderBrowserDialog)
$AcuteGit.SuspendLayout()
#
#update_fork_button
#
$update_fork_button.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]12))
$update_fork_button.Name = [System.String]'update_fork_button'
$update_fork_button.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]170,[System.Int32]41))
$update_fork_button.TabIndex = [System.Int32]0
$update_fork_button.Text = [System.String]'Force Update Fork'
$update_fork_tooltip.SetToolTip($update_fork_button,[System.String]'Will update (reset) a fork from upstream')
$update_fork_button.UseCompatibleTextRendering = $true
$update_fork_button.UseVisualStyleBackColor = $true
$update_fork_button.add_Click($update_fork_Click)
#
#update_fork_folderBrowser
#
$update_fork_folderBrowser.RootFolder = [System.Environment+SpecialFolder]::MyComputer
#
#removespace_button
#
$removespace_button.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]221,[System.Int32]12))
$removespace_button.Name = [System.String]'removespace_button'
$removespace_button.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]163,[System.Int32]40))
$removespace_button.TabIndex = [System.Int32]1
$removespace_button.Text = [System.String]'Remove Trailing Space'
$removespace_button.UseVisualStyleBackColor = $true
$removespace_button.add_Click($removespace_Click)
#
#removespace_folderBrowser
#
$removespace_folderBrowser.RootFolder = [System.Environment+SpecialFolder]::MyComputer
#
#AcuteGit
#
$AcuteGit.ClientSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]669,[System.Int32]404))
$AcuteGit.Controls.Add($removespace_button)
$AcuteGit.Controls.Add($update_fork_button)
$AcuteGit.Name = [System.String]'AcuteGit'
$AcuteGit.StartPosition = [System.Windows.Forms.FormStartPosition]::CenterScreen
$AcuteGit.Text = [System.String]'AcuteGit by Amin Yahyaabadi'
$AcuteGit.ResumeLayout($false)
Add-Member -InputObject $AcuteGit -Name base -Value $base -MemberType NoteProperty
Add-Member -InputObject $AcuteGit -Name components -Value $components -MemberType NoteProperty
Add-Member -InputObject $AcuteGit -Name update_fork_button -Value $update_fork_button -MemberType NoteProperty
Add-Member -InputObject $AcuteGit -Name update_fork_tooltip -Value $update_fork_tooltip -MemberType NoteProperty
Add-Member -InputObject $AcuteGit -Name update_fork_folderBrowser -Value $update_fork_folderBrowser -MemberType NoteProperty
Add-Member -InputObject $AcuteGit -Name removespace_button -Value $removespace_button -MemberType NoteProperty
Add-Member -InputObject $AcuteGit -Name removespace_folderBrowser -Value $removespace_folderBrowser -MemberType NoteProperty
Add-Member -InputObject $AcuteGit -Name button1 -Value $button1 -MemberType NoteProperty
}
. InitializeComponent
