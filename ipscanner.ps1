$timer = (Get-Date) -replace "/", "-" `
-replace " ","" `
-replace ":", ""

$filename = "c:\" + $timer + "cikti.txt"
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
	}
