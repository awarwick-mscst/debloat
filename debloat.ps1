#  Debloat Apps via winget with command line prompt
#  Author: Aaron Warwick
#  Date: 16-September-2022
#  Company: StarTech Computing Inc. 
#
#  Dependency: winget
#  Running the command prompt or the powershell as administrator is desired but not required,
#    this might reduce user interaction by not having to press OK for administrator access
#
$confirmation = Read-Host "Are you Sure You Want To debloat: y to debloat"
if ($confirmation -eq 'y') {
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
    "Microsoft.MicrosoftSolitaireCollection_8wekyb3d8bbwe"
    #"Microsoft.MicrosoftOfficeHub_8wekyb3d8bbwe"
  )

  Foreach ($app in $apps)
  {
    Write-host "Uninstalling:" $app
    winget uninstall $app  
  }
}