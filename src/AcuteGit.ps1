$update_fork_Click = {
	echo "This script will update the local and remote fork"
    [void] $update_fork_folderBrowser.ShowDialog()
    
    # $path = Read-Host 'Enter path of the repository'
    $path = $update_fork_folderBrowser.SelectedPath

    cd $path
    git fetch upstream
    git reset --hard upstream/master
    git push -f
}


. (Join-Path $PSScriptRoot 'AcuteGit.designer.ps1')

$AcuteGit.ShowDialog()