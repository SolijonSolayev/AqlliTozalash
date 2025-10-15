#!/bin/bash

# Keraksiz fayllarni topish va tozalash script'i

echo "=== Keraksiz fayllarni va keshlarni tozalash boshlanmoqda ==="

# 1. Keraksiz fayllar va kataloglarni aniqlash
# (Masalan, ko‘p vaqt davomida to‘plangan kesh va vaqtinchalik fayllar)
find / ("/tmp" "/var/tmp" "~/.cache" "~/.local/share/Trash") -type f -name '*~' -o -name '*.bak' -o -name '*.old' -print -exec rm -f {} \;

# 2. Keshlarni tozalash
# (Browser, tizim cache, va boshqalar)
# Mozilla Firefox cache
rm -rf ~/.mozilla/firefox/*default-release/cache2/*
# Chrome cache
rm -rf ~/.cache/google-chrome/Default/Cache/*
# Sistem keshlar
sudo apt-get clean
sudo apt-get autoclean

# 3. Xatoliklarni aniqlash va tuzatish uchun tizimdagi loglarni tekshirish
echo "Xatoliklar va muammolarni qidirish..."
dmesg --ctime | tail -20

# 4. Disk va fayl tizimi sog‘lig‘ini tekshirish
echo "Disklarni tekshirish..."
sudo fsck -Af -V

# 5. Fayl tizimini optimallashtirish (tarqatish va fragmentatsiya)
echo "Fayl tizimini optimallashtirish..."
# Linuxda fsck va defragmentatsiya odatda kerak bo'lmaydi, lekin SSD uchun trim qilish
sudo fstrim -av

echo "=== Tozalash va tekshirish yakunlandi ==="
