﻿$Location = New-Object -com "WbemScripting.SWbemLocator";
$WmiService = $Location.ConnectServer(".","root\cimV2");


$Class = $WmiService.Get("Win32_Directory", 131072);
$Class.Methods_ | select Name, InParameters, OutParameters