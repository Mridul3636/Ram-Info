# Get RAM information
Write-Host "==================== RAM Information ===================="

Get-WmiObject Win32_PhysicalMemory | ForEach-Object {
    Write-Host "Bank: $($_.BankLabel)"
    Write-Host "Capacity: $([math]::Round($_.Capacity/1GB,2)) GB"
    Write-Host "Speed: $($_.Speed) MHz"
    Write-Host "Type: $($_.MemoryType)"
    Write-Host "Manufacturer: $($_.Manufacturer)"
    Write-Host "-------------------------------------------------------"
}

# Optional: Get total RAM speed summary
$totalRam = (Get-WmiObject Win32_PhysicalMemory | Measure-Object -Property Capacity -Sum).Sum
Write-Host "Total RAM Installed: $([math]::Round($totalRam/1GB,2)) GB"


Develped by Md. Minhazur Rahaman