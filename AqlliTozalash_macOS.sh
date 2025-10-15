#!/bin/bash
echo "AqlliTozalash_macOS skripti ishga tushmoqda..."

# Vaqtinchalik fayllarni tozalash
rm -rf /tmp/*
rm -rf ~/Library/Caches/*
rm -rf ~/Library/Logs/*

# Safari brauzer cache'ini tozalash
rm -rf ~/Library/Caches/com.apple.Safari/*
rm -rf ~/Library/Safari/Databases/*

# Sistem kesh va loglarni tozalash (root talab qilinadi)
sudo rm -rf /Library/Caches/*
sudo rm -rf /private/var/log/*

echo "Tozalash yakunlandi!"
