    $printers = Get-Printer 
    if ($printers.count -gt 1){
        Write-Host "Multiple printers were found! Please select a printer:" -ForegroundColor Green
        for($i = 0; $i -lt $printers.count; $i++){
            Write-Host "$($i): $($printers[$i].SamAccountName) | $($printers[$i].Name)"
        }
        $selection = Read-Host -Prompt "Enter the number of the printer"
        $selected_printer = $printers[$selection]
       Write-Host "You will print out to:" -ForegroundColor Green;
       $printername = $selected_printer.Name
       Write-Host "$printername" -ForegroundColor Red;
    }


Write-Host "-----------------------------------" -ForegroundColor white
  cd C:\
  

    $directory = ls 
    if ($directory.count -gt 1){
       Write-Host "Choose a folder to print from:" -ForegroundColor Green
        for($i = 0; $i -lt $directory.count; $i++){
            Write-Host "$($i): $($directory[$i].SamAccountName) | $($directory[$i].Name)"
        }
        $selection = Read-Host -Prompt "Enter the number of the desired folder"
        $selected_folder = $directory[$selection]
       Write-Host "You selected:" -ForegroundColor Green;
       $foldername = $selected_folder.Name
       Write-Host "$foldername" -ForegroundColor Red;
    }

    Write-Host “Do you need to further navigate into this folder?”
    $Yes_No = read-host -prompt “Y/N?”

DO
{$directory2 = ls 
    if ($directory2.count -gt 1){
       Write-Host "Choose a folder to print from:" -ForegroundColor Green
        for($i = 0; $i -lt $directory2.count; $i++){
            Write-Host "$($i): $($directory2[$i].SamAccountName) | $($directory2[$i].Name)"
        }
        $selection = Read-Host -Prompt "Enter the number of the desired folder"
        $selected_folder = $directory[$selection]
       Write-Host "You selected:" -ForegroundColor Green;
       $foldername = $selected_folder.Name
       Write-Host "$foldername" -ForegroundColor Red;}
       Write-Host “Do you need to further navigate into this folder?”
       $Yes_No = read-host -prompt “Y/N?”

       } While ($Yes_No -eq "Y")


Write-Host "Input file name (please include the .file type)" -ForegroundColor Green
$FileName = read-host -prompt " "
".\" + $FileName | Out-Printer -Name $selected_printer.Name