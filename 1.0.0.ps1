﻿get-printer

$PrinterName = read-host -prompt "Input Printer Name"

$FileName = read-host -prompt "Input File Path"

$FileName | Out-Printer -Name $PrinterName