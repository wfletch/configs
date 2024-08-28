copy $PROFILE $Env:ps_config_dir\ps_config.ps1
$date_now = Get-Date -Format "MM/dd/yyyy"
Add-Content -Path $Env:ps_config_dir\ps_config.ps1 -Value "# Date: $date_now" -Encoding ASCII -Width 50
git add *.ps1

# TODO: Don't add if we already have an entry for this day!
git commit -m "Powershell Config: $date_now"
git push