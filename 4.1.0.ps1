    Write-Host "Welcome to Mr. Printy! Please wait while I search for Printers." -ForegroundColor Yellow
    Start-sleep -s 1
    Write-Host "." -ForegroundColor Yellow
    Start-sleep -s 1
    Write-Host ".." -ForegroundColor Yellow
    Start-sleep -s 1
    Write-Host "..." -ForegroundColor Yellow
    Start-sleep -s 1

    $printers = Get-Printer 
    if ($printers.count -gt 1){
        Write-Host "Multiple printers were found! Where are we printing to today?" -ForegroundColor Yellow
       Start-sleep -s 1
        Write-Host "Please select a printer:" -ForegroundColor Green
        for($i = 0; $i -lt $printers.count; $i++){
            Write-Host "$($i): $($printers[$i].SamAccountName) | $($printers[$i].Name)"
        }
        $selection = Read-Host -Prompt "Enter the number of the printer"
        $selected_printer = $printers[$selection]
       Write-Host "You will print out to:" -ForegroundColor Green;
       $printername = $selected_printer.Name
       Write-Host "$printername" -ForegroundColor Magenta;
    }

  Start-sleep -s 1
Write-Host "-----------------------------------" -ForegroundColor Yellow
  Start-sleep -s 1

cd C:\
  
Write-Host "Now lets choose our folder!" -ForegroundColor Yellow
  Start-sleep -s 1

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
       Write-Host "$foldername" -ForegroundColor Magenta;
       cd $selected_folder
    }

    Write-Host “Do you need to further navigate into this folder?”;
    $Yes_No = read-host -prompt “Y/N?”;

    Start-sleep -s 1
Write-Host "-----------------------------------" -ForegroundColor Yellow
    Start-sleep -s 1

If($Yes_No -eq "Y")
{
DO
{$directory = ls 
    if ($directory.count -gt 1){
       Write-Host "Choose a folder to print from:" -ForegroundColor Green
        for($i = 0; $i -lt $directory.count; $i++){
            Write-Host "$($i): $($directory[$i].SamAccountName) | $($directory[$i].Name)"
        }
        $selection = Read-Host -Prompt "Enter the number of the desired folder"
        $selected_folder = $directory[$selection]
       Write-Host "You selected:" -ForegroundColor Green;
       $foldername = $selected_folder.Name
       Write-Host "$foldername" -ForegroundColor Magenta;}
       cd $selected_folder
       Write-Host “Do you need to further navigate into this folder?”
       $Yes_No = read-host -prompt “Y/N?”

       } While ($Yes_No -eq "Y")
    }

      Start-sleep -s 1
  Write-Host "-----------------------------------" -ForegroundColor Yellow
      Start-sleep -s 1


    Write-host "We're here! what do you need to print?" -ForegroundColor Yellow
    $directory = ls 
    if ($directory.count -gt 1){
       Write-Host "Choose a file to print:" -ForegroundColor Green
        for($i = 0; $i -lt $directory.count; $i++){
            Write-Host "$($i): $($directory[$i].SamAccountName) | $($directory[$i].Name)"
        }
        $selection = Read-Host -Prompt "Enter the number of the desired folder"
        $selected_file = $directory[$selection]
       Write-Host "You selected:" -ForegroundColor Green;
       $filename = $selected_file.Name
       Write-Host "$filename" -ForegroundColor Magenta;
    }
    
    ".\" + $FileName | Out-Printer -Name $selected_printer.Name
      Start-sleep -s 1
    Write-Host "Time to head to the printer! Thanks for using Mr. Printy!" -ForegroundColor Yellow