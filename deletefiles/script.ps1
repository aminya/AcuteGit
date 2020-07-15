$Files = "indent-detective.d.ts","selector.d.ts", "status.d.ts", "tsconfig.tsbuildinfo", "selector.js", "status.js"
 foreach ($File in $Files) {
    java -jar bfg.jar --delete-files $File --no-blob-protection .
	rm $File
	git reflog expire --expire=now --all && git gc --prune=now --aggressive
}
