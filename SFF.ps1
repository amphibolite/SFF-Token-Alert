$shouldAlert = 0
$wshell = New-Object -ComObject Wscript.Shell

while($shouldAlert -lt 2){
$tokensupply = ((Invoke-WebRequest 'https://api.polygonscan.com/api?module=stats&action=tokensupply&contractaddress=0x3b4f867d50231a9263cdaed87c80c3962b1483d7&apikey=HNSTFNGG5UK8UC645MQUH8ABYQARUAQ66K' | ConvertFrom-Json).result)/1000000000000000000  

if($tokensupply -lt 100600 -and $shouldAlert -lt 1){
$tokensupply
$shouldAlert = 1
[console]::beep(1000, 100)
}

else{
$tokensupply
$shouldAlert = 0
}

Start-Sleep -s 1
}