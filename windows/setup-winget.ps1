##### Winget #####

# https://winget.run/
# winget search ""

$wingetInstalled = Get-Command -ErrorAction SilentlyContinue winget
if (-not $wingetInstalled) {
    $url = "http://aka.ms/getwinget"
    $outputPath = "$env:USERPROFILE\Downloads\winget.DesktopAppInstaller.msixbundle"
    Invoke-WebRequest -Uri $url -OutFile $outputPath
    Start-Process -FilePath $outputPath -Wait
    # no garbage here!!
    Remove-Item -Path $outputPath -Force
}

# Social Medias
winget install -e --id WhatsApp.WhatsApp
winget install -e --id Telegram.TelegramDesktop
winget install -e --id Discord.Discord

# Dev
winget install -e --id Git.Git
winget install -e --id JetBrains.IntelliJIDEA.Ultimate
winget install -e --id Microsoft.VisualStudioCode
winget install -e --id GitHub.GitHubDesktop
winget install -e --id Insomnia.Insomnia
winget install -e --id beekeeper-studio.beekeeper-studio
winget install -e --id Canonical.Ubuntu.2004
winget install -e --id Microsoft.WindowsTerminal

# Entertainment
winget install -e --id Stremio.Stremio
winget install -e --id Valve.Steam
winget install -e --id Notion.Notion
winget install -e --id EpicGames.EpicGamesLauncher
winget install -e --id Spotify.Spotify

# Browsers
winget install -e --id Google.Chrome.Canary
winget install -e --id Opera.OperaGX

# Softwares
# Adobe Creative Cloud
winget install -e --id XPDLPKWG9SW2WD 
# HyperX NGENUITY
winget install -e --id 9P1TBXR6QDCX
winget install -e --id Logitech.GHUB
winget install -e --id Nvidia.GeForceExperience
# Kaspersky
winget install -e --id Microsoft.OneDrive
# TranslucentTB
winget install -e --id 9PF4KZ2VN4W9
winget install -e --id ReincubateLtd.CamoStudio
winget install -e --id GeekUninstaller.GeekUninstaller
winget install -e --id RARLab.WinRAR

# Games
winget install -e --id RiotGames.Valorant.BR
