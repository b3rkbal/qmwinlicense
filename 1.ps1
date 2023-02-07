Get-CimInstance -ClassName SoftwareLicensingProduct -Namespace root/CIMV2 | ForEach-Object -Process {[PSCustomObject]@{"Grace Period" =  [System.Math]::Round($_.GracePeriodRemaining/1440)}}
