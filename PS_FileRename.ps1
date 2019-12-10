#Set-ExecutionPolicy bypass

#use a # to comment out the lines you aren't using

#replace string, such as a space with an _ or a comma with a space
Dir | Rename-Item -NewName { $_.Name -replace "X","Y" }

#remove from end of string basename.length-#
#dir | rename-item -NewName {$_.name.substring(0,$_.BaseName.length-30) + $_.Extension}

#remove from start of string .substring(#)
#dir | rename-item -newname { [string]($_.name).substring(6) }