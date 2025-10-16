#!/usr/bin/env bash

# Keraksiz fayllarni topish va tozalash script'i

echo "=== Keraksiz fayllarni va keshlarni tozalash boshlanmoqda ==="

# Direktoriya ro'yxati (HOME o'rniga ~ ishlatilmaydi, $HOME ishlatish yaxshiroq)
dirs=(
  "/tmp"
  "/var/tmp"
  "$HOME/.cache"
  "$HOME/.local/share/Trash"
)

# 1. Keraksiz fayllar va kataloglarni aniqlash (dry-run)
# Avvalo natijalarni ko'rish uchun faqat -print ishlatamiz
echo "Quyidagi fayllar aniqlanmoqda (dry-run):"
find "${dirs[@]}" -type f \( -name '*~' -o -name '*.bak' -o -name '*.old' \) -print

# Agar natija to'g'ri bo'lsa, haqiqiy o'chirishni ishga tushirish uchun quyidagi qatorlarning kommentlarini olib tashlang
# echo "O'chirishni boshlayapman..."
# find "${dirs[@]}" -type f \( -name '*~' -o -name '*.bak' -o -name '*.old' \) -print -exec rm -f {} \;

# 2. Keshlarni tozalash
# (Browser, tizim cache, va boshqalar)
# Mozilla Firefox cache
rm -rf "$HOME/.mozilla/firefox"/*default-release/cache2/* 2>/dev/null || true
# Chrome cache
rm -rf "$HOME/.cache/google-chrome/Default/Cache"/* 2>/dev/null || true
# Sistem keshlar
if command -v apt-get >/dev/null 2>&1; then
  sudo apt-get clean
  sudo apt-get autoclean
fi

# 3. Xatoliklarni aniqlash va tuzatish uchun tizimdagi loglarni tekshirish
echo "Xatoliklar va muammolarni qidirish..."
if command -v dmesg >/dev/null 2>&1; then
  dmesg --ctime | tail -20
fi

# 4. Disk va fayl tizimi sog‘lig‘ini tekshirish
echo "Disklarni tekshirish..."
# fsck talab qilinmaydi agar siz boot qilingan tizimda ishga tushirsangiz; ehtiyotkorlik bilan ishlating
if command -v fsck >/dev/null 2>&1; then
  sudo fsck -Af -V || true
fi

# 5. Fayl tizimini optimallashtirish (SSD uchun trim)
echo "Fayl tizimini optimallashtirish..."
if command -v fstrim >/dev/null 2>&1; then
  sudo fstrim -av || true
fi

echo "=== Tozalash va tekshirish yakunlandi ==="