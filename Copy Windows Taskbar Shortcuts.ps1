# Quick way to backup taskbar shortcuts for post imaged machine.
# Change variable if you know you are in a different environment.
# Enjoy!

$username = read-host -Prompt 'Enter Username'
$path = 'C:\Users\'+$username+'\AppData\Roaming\Microsoft\Internet Explorer\Quick Launch\User Pinned\TaskBar\*'
$path2 = '\\app\home\'+$username
$destination = '\\app\home\'+$username+'\Windows Taskbar'

Read-Host -Prompt 'Variable Set. Press Enter to continue.'
New-Item -Path $path2 -Name 'Windows Taskbar' -ItemType "directory"

Read-Host -Prompt 'Directory created in destination. Press Enter to continue.'
Copy-Item -Path $path -Destination $destination

Read-Host -Prompt 'Taskbar shortcuts copied. Press Enter to exit.'


-------------------------------------------------------

$username = read-host -Prompt 'Enter Username'
$path = 'C:\Users\'+$username+'\AppData\Roaming\Microsoft\Internet Explorer\Quick Launch\User Pinned\TaskBar\*'
$destination = 'C:\Users\'+$username+'.MGA'+'\AppData\Roaming\Microsoft\Internet Explorer\Quick Launch\User Pinned\TaskBar\'
