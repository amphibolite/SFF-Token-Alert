$shouldAlert = 0
$floor = 100000
#$wshell = New-Object -ComObject Wscript.Shell

while($shouldAlert -lt 2){
$tokensupply = ((Invoke-WebRequest 'https://api.polygonscan.com/api?module=stats&action=tokensupply&contractaddress=0xdf9B4b57865B403e08c85568442f95c26b7896b0&apikey=HNSTFNGG5UK8UC645MQUH8ABYQARUAQ66K' | ConvertFrom-Json).result)/1000000000000000000  

if($tokensupply -lt $floor -and $shouldAlert -lt 1){
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