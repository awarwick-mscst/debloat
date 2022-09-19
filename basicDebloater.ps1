#  Basic debloater using winget, an array and a for each loop
#  Author: Aaron Warwick
#  Date: 16-Sept-2022
#  Company: Startech Computers Inc
#  Dependency: winget
Write-host "   _____ _______ _____ " 
Write-host "  / ____|__   __/ ____|"
Write-host " | (___    | | | |     "
Write-host "  \___ \   | | | |     "
Write-host "  ____) |  | | | |____ "
Write-host " |_____/   |_|  \_____|"
Write-Host " StarTech Computing Inc"
Write-Output "Debloating apps"

  #  app black list
  $apps = @(
    "Microsoft.BingWeather_8wekyb3d8bbwe"
    #"Microsoft.WindowsPCHealthCheck"
    #"microsoft.windowscommunicationsapps_8wekyb3d8bbwe"
    #"Microsoft.OneDrive"
    "Microsoft.ZuneVideo_8wekyb3d8bbwe"
    "Microsoft.ZuneMusic_8wekyb3d8bbwe"
    "Microsoft.YourPhone_8wekyb3d8bbwe"
    "Microsoft.XboxSpeechToTextOverlay_8wekyb3d8bbwe"
    "Microsoft.XboxIdentityProvider_8wekyb3d8bbwe"
    "Microsoft.XboxGamingOverlay_8wekyb3d8bbwe"
    "Microsoft.XboxGameOverlay_8wekyb3d8bbwe"
    "Microsoft.XboxApp_8wekyb3d8bbwe"
    "Microsoft.Xbox.TCUI_8wekyb3d8bbwe"
    "Microsoft.WindowsMaps_8wekyb3d8bbwe"
    "Microsoft.Wallet_8wekyb3d8bbwe"
    "Microsoft.SkypeApp_kzf8qxf38zg5c"
    "Microsoft.People_8wekyb3d8bbwe"
    #"Microsoft.Office.OneNote_8wekyb3d8bbwe"
    "Microsoft.MixedReality.Portal_8wekyb3d8bbwe"
    #"Microsoft.MicrosoftStickyNotes_8wekyb3d8bbwe"
    #"Microsoft.MicrosoftSolitaireCollection_8wekyb3d8bbwe"
    #"Microsoft.MicrosoftOfficeHub_8wekyb3d8bbwe"
  )

  Foreach ($app in $apps)
  {
    Write-host "Uninstalling:" $app
    winget uninstall $app  
  }