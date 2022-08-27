    $printers = Get-Printer 
    if ($printers.count -gt 1){
        Write-Host "Multiple printers were found" -ForegroundColor Green
        Write-Host "Please select a printer" -ForegroundColor Green
        for($i = 0; $i -lt $printers.count; $i++){
            Write-Host "$($i): $($printers[$i].SamAccountName) | $($printers[$i].Name)"
        }
        $selection = Read-Host -Prompt "Enter the number of the printer"
        $selected_printer = $printers[$selection]
    }
