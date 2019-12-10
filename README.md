# Powershell-File-Rename
Powershell script to quickly edit filenames in bulk by removing text at the beginning or end of the filename, or replacing all of one character with another.


Bypass the execution policy for this script so it can be run from command line
Set-ExecutionPolicy bypass

    use a # to comment out the lines you aren't using

replace all instances of a character or string, such as a space with an _ or a comma with a space
In the below command the character or string to replace is X, the replacement text to be input is Y

    dir | Rename-Item -NewName { $_.Name -replace "X","Y" }

remove from end of string basename.length-X without changing the file extension
ex. basename.length-5 will remove the last 5 characters from the filename

    dir | rename-item -NewName {$_.name.substring(0,$_.BaseName.length-X) + $_.Extension}

remove from start of string .substring(X)
ex. .substring(8) will remove the first 8 characters in the filename

    dir | rename-item -newname { [string]($_.name).substring(X) }
