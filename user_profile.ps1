#Alias
Function CDREP {Set-Location -Path D:\win_code\repositories}
Function VIMPROFILE {vim C:\Users\taras\.config\powershell\user_profile.ps1}

Function REMOVE() {
	rm -Recurse -Force $args
}

Function COMPILE_JFX() {
    javac --module-path 'C:\Program Files\Java\javafx-sdk-20.0.1\lib' --add-modules ALL-MODULE-PATH $args
}
#[string]$file
Function RUN_JFX() {
    # Write-Output $args
    java --module-path 'C:\Program Files\Java\javafx-sdk-20.0.1\lib' --add-modules ALL-MODULE-PATH $args
} 

Function DIRFORCE {
   dir -Force 
}

Set-Alias -Name rmrf -Value	REMOVE 
Set-Alias -Name jfxc -Value COMPILE_JFX
Set-Alias jfx RUN_JFX
Set-Alias vim nvim
Set-Alias check_config VIMCONFIG
Set-Alias ll DIRFORCE 
Set-Alias -Name go -Value CDREP
Set-Alias d docker
