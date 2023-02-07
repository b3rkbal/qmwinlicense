Get-CimInstance -ClassName SoftwareLicensingProduct -Namespace root/CIMV2 | ForEach-Object -Process {[PSCustomObject]@{Name = $_.Name; Description = $_.Description; "Grace Period" =  [System.Math]::Round($_.GracePeriodRemaining/1440)}}
