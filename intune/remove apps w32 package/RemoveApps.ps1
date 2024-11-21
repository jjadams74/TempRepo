$appsToRemove = @(
    "Microsoft.GamingApp",
    "Microsoft.XboxApp"
    "Clipchamp.Clipchamp",
    "Microsoft.XboxGameOverlay",
    "Microsoft.XboxGamingOverlay",
    "Microsoft.XboxIdentityProvider",
    "Microsoft.XboxSpeechToTextOverlay",
    "Microsoft.Xbox.TCUI",
    "AppleInc.iTunes",
    "Microsoft.BingWeather",
    "Microsoft.MicrosoftPowerBIDesktop",
    "Microsoft.MicrosoftSolitaireCollection",
    "Microsoft.SkypeApp",
    "Microsoft.YourPhone",
    "Microsoft.Windows.DevHome",
    "Microsoft.WindowsMaps",
    "Microsoft.ZuneVideo",
    "Microsoft.ZuneVideo",
    "Microsoft.MixedReality.Portal",
    "Microsoft.GetHelp",
    "Microsoft.BingNews",
    "MicrosoftCorporationII.QuickAssist",
    "Microsoft.549981C3F5F10",
    "Microsoft.WindowsFeedbackHub",
    "Netflix",
    "Whatsapp",
    "Facebook",
    "Disney",
    "Microsoft.WindowsAlarms"
"Dell Optimizer"
    "Dell Power Manager"
    "DellOptimizerUI"
    "Dell SupportAssist OS Recovery"
    "Dell SupportAssist"
    "Dell Optimizer Service"
        "Dell Optimizer Core"
    "DellInc.PartnerPromo"
    "DellInc.DellOptimizer"
    "DellInc.DellCommandUpdate"
        "DellInc.DellPowerManager"
        "DellInc.DellDigitalDelivery"
        "DellInc.DellSupportAssistforPCs"
        "DellInc.PartnerPromo"
        "Dell Command | Update"
    "Dell Command | Update for Windows Universal"
        "Dell Command | Update for Windows 10"
        "Dell Command | Power Manager"
        "Dell Digital Delivery Service"
    "Dell Digital Delivery"
        "Dell Peripheral Manager"
        "Dell Power Manager Service"
    "Dell SupportAssist Remediation"
    "SupportAssist Recovery Assistant"
        "Dell SupportAssist OS Recovery Plugin for Dell Update"
        "Dell SupportAssistAgent"
        "Dell Update - SupportAssist Update Plugin"
        "Dell Core Services"
        "Dell Pair"
        "Dell Display Manager 2.0"
        "Dell Display Manager 2.1"
        "Dell Display Manager 2.2"
        "Dell SupportAssist Remediation"
        "Dell Update - SupportAssist Update Plugin"
     "DellInc.PartnerPromo"


)

foreach ($app in $appsToRemove) {
    $packages = Get-AppxPackage | Where-Object { $_.Name -like "*$app*" }
    foreach ($package in $packages) {
        Write-Host "Removing $($package.PackageFullName)"
        Remove-AppxPackage -Package $package.PackageFullName
    }
}
Out-File -filepath c:\programdata\rs.txt
