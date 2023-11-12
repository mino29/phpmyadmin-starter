# Start the PHP built-in server from the installation folder
Start-Process "php" -ArgumentList "-S localhost:8000" -WorkingDirectory $ENV:USERPROFILE\scoop\apps\phpmyadmin\current -NoNewWindow

# Wait for the server to start (you may need to adjust this delay)
Start-Sleep -Seconds 1

# Open the URL in the default browser
Start-Process "http://localhost:8000/index.php"

