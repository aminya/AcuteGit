$removespace_Click = {
    [void] $removespace_folderBrowser.ShowDialog()
    $path = $removespace_folderBrowser.SelectedPath
    
    while (IFS= read -r -d '' -u 9){

    }
    do
    if [[ "$(file -bs --mime-type -- "$REPLY")" = text/* ]]
    then
        sed -i 's/[ \t]\+\(\r\?\)$/\1/' -- "$REPLY"
    else
        echo "Skipping $REPLY" >&2
    fi
    done 9< <(find . -type f -print0)

}

$update_fork_Click = {
	echo "This script will update the local and remote fork"
    # $path = Read-Host 'Enter path of the repository'

    [void] $update_fork_folderBrowser.ShowDialog()
    $path = $update_fork_folderBrowser.SelectedPath

    cd $path
    git fetch upstream
    git reset --hard upstream/master
    git push -f
}


. (Join-Path $PSScriptRoot 'AcuteGit.designer.ps1')

$AcuteGit.ShowDialog()