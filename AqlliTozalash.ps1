# AqlliTozalash Windows versiyasi
Write-Host "Aqlli Tozalash boshlanmoqda..." -ForegroundColor Cyan

# 1. Vaqtinchalik fayllarni va cache’larni tozalash
Write-Host "Vaqtinchalik fayllar va cache’larni tozalash..."
Remove-Item -Path "$env:LOCALAPPDATA\Temp\*" -Recurse -Force -ErrorAction SilentlyContinue
Remove-Item -Path "$env:SystemDrive\$Recycle.Bin\*" -Recurse -Force -ErrorAction SilentlyContinue
Remove-Item -Path "$env:LOCALAPPDATA\Google\Chrome\User Data\Default\Cache\*" -Recurse -Force -ErrorAction SilentlyContinue
Remove-Item -Path "$env:LOCALAPPDATA\Mozilla\Firefox\Profiles\*\cache2\*" -Recurse -Force -ErrorAction SilentlyContinue

# 2. Browser cache’larni tozalash
Write-Host "Microsoft Edge brauzer cache'ini tozalash..."
Remove-Item -Path "$env:LOCALAPPDATA\Microsoft\Edge\User Data\Default\Cache\*" -Recurse -Force -ErrorAction SilentlyContinue

# 3. Diskni ehtiyotkorlik bilan tekshirish va avtomatik tuzatish
Write-Host "Diskni tekshirish..."
chkdsk /F /R C: | Out-Null

# 4. System xatoliklarini va loglarni tekshirish
Write-Host "Xatoliklar yozuvlarini tekshirish..."
Get-WindowsEvent -FilterHashtable @{LogName='System'; Level=2} -MaxEvents 10 | Format-Table TimeCreated, Message

# 5. Diskni optimal qilish (aktual SSD uchun)
Write-Host "Fayl tizimini optimallashtirish..."
# Fstrim SSD uchun
fstrim -v C: 

Write-Host "Aqlli tozalash yakunlandi!" -ForegroundColor Green
