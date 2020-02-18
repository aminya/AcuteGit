Function Get-Folder($initialDirectory) {
    [void] [System.Reflection.Assembly]::LoadWithPartialName('System.Windows.Forms')
    $FolderBrowserDialog = New-Object System.Windows.Forms.FolderBrowserDialog
    $FolderBrowserDialog.RootFolder = 'MyComputer'
    if ($initialDirectory) { $FolderBrowserDialog.SelectedPath = $initialDirectory }
    [void] $FolderBrowserDialog.ShowDialog()
    return $FolderBrowserDialog.SelectedPath
}
# ($FolderPermissions = Get-Folder C:\Users | get-acl | select -exp access | ft)


$button2_Click = {
    echo "This script will update the local and remote fork"
    # $path = Read-Host 'Enter path of the repository'
    $path = Get-Folder

    cd $path
    git fetch upstream
    git reset --hard upstream/master
    git push -f
}

. (Join-Path $PSScriptRoot 'AcuteGit.designer.ps1')

$AcuteGit.ShowDialog()