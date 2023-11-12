# ----------------------------    phpMyAdmin    ----------------------------------

function phpmyadmin {
    param(
        [string]$action
    )

    if ($action -eq "start") {
        # Run the start-php-server.ps1 script
        & "$ENV:USERPROFILE\.phpmyadmin\start-php-server.ps1"
    } elseif ($action -eq "stop") {
        # Run the stop-php-server.ps1 script
        & "$ENV:USERPROFILE\.phpmyadmin\stop-php-server.ps1"
    } else {
        Write-Host "Invalid action. Please use 'start' or 'stop'."
    }
}
