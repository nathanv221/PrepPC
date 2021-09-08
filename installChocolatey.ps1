IF (((Test-NetConnection www.google.com -Port 80 -InformationLevel "Detailed").TcpTestSucceeded))
{
    Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
}
else 
    {Write-Host "Connect to the internet dum-dum"}
