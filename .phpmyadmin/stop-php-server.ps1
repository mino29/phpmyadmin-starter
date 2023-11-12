# Get the PHP server process
$phpServerProcess = Get-Process -Name "php" -ErrorAction SilentlyContinue

# Check if the process was found
if ($phpServerProcess) {
    # Stop the PHP server process
    Stop-Process -InputObject $phpServerProcess
    Write-Host "PHP server process has been stopped."
} else {
    Write-Host "PHP server process is not running."
}
