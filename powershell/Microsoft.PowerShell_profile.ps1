# Import the Chocolatey Profile that contains the necessary code to enable
# tab-completions to function for `choco`.
# Be aware that if you are missing these lines from your profile, tab completion
# for `choco` will not function.
# See https://ch0.co/tab-completion for details.

# Self Defined Variables
$env:RANDOM_THEME = $false
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
$CustomProfile = "$env:CUSTOM_PROFILE_PATH\Profile.ps1"

# Useful Aliases

Set-Alias -Name list -Value Get-ChildItem


# Useful Functions
function activate_env {
	$path_to_env_activate="$pwd\venv\Scripts\Activate.ps1"
	$prompt=($path_to_env_activate  -split '\\' )[-4]
    & "$path_to_env_activate" -Prompt $prompt
}

if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}
if (Test-Path($CustomProfile)) {
	# TODO. Use Custom Profile... if it exists!
}


if ($env:RANDOM_THEME -eq $true)
{
	cd "$env:POSH_THEMES_PATH"
	# Get-ChildItem | Measure-Object
	$theme_rand_num = Get-Random -Maximum 125
	$theme_list = Get-ChildItem -Name
	$theme_to_use = $theme_list[$theme_rand_num]
	echo "Using $theme_to_use"
	cd $HOME
}
else
{
$theme_to_use = "catppuccin_macchiato.omp.json"
}

oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\$theme_to_use" | Invoke-Expression