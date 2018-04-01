$timer = (Get-Date) -replace "/", "-" `
-replace " ","" `
-replace ":", ""
$cikti = read-host "Cikti Adi: "
$filename = "c:\" + $timer + "_"+$cikti+".txt"
$canliIPtxt = "c:\" + $timer + "_"+"canli.txt"
$cansizIPtxt = "c:\" + $timer + "_"+"cansiz.txt"
$subnet = read-host "Subnet: "
$baslangic = read-host "Baslangic: "
$bitis = read-host "Bitis: "
($baslangic..$bitis) | foreach {
	$ip = "$subnet.$_"
	$props = @{
		'IP' = $ip ;
		'Name' = (Resolve-DnsName $ip -ErrorAction SilentlyContinue | select -ExpandProperty NameHost) ;
		'Response' = (Test-Connection $ip -Quiet -Count 1)
	}
	$obj = New-Object -TypeName psobject -Property $props
	Write-Output $obj
	Add-Content $filename $obj
	if ($obj.Response -eq $True)
	{
	Add-Content $canliIPtxt $obj
	}
	else
	{
	Add-Content $cansizIPtxt $obj
	}
	}
