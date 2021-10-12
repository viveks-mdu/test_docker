$response = Invoke-WebRequest -Uri http://localhost:80/Hello.html -UseBasicParsing
Write-Host $response.StatusCode + "status code"

C:\ServiceMonitor.exe w3svc