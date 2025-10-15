# 🧹 AqlliTozalash Skriptlari To‘plami

Ushbu loyihada uchta tozalash skripti mavjud bo‘lib, ularni turli operatsion tizimlarda qulay va xavfsiz ishlatish uchun mo‘ljallangan:

- `AqlliTozalash_macOS.sh` — macOS uchun (bash skript)
- `AqlliTozalash.sh` — Linux uchun (bash skript)
- `AqlliTozalash.ps1` — Windows PowerShell uchun

---

## 🧰 Talablar

### macOS/Linux (`.sh` skriptlar)

- Bash shell (bash 3.x yoki 4.x)
- Skriptni ishga tushirish uchun terminal
- Tozalash uchun ba’zi buyruqlarni bajarishda `sudo` (administrator) ruxsatlari kerak bo‘lishi mumkin

### Windows PowerShell (`.ps1` skript)

- PowerShell 5.1 yoki undan yuqori (PowerShell Core/7 tavsiya qilinadi)
- Skript ishga tushishi uchun PowerShell Execution Policy `RemoteSigned` yoki `Bypass` bo‘lishi kerak  
  (`Set-ExecutionPolicy` yordamida sozlanadi)
- Administrator huquqlari ba’zan talab qilinadi

---

## ⚙️ Ishga tushirish qo‘llanma

### macOS/Linux uchun

1. Terminalni oching.  
2. Skript faylini yuklab olib, kerakli papkaga joylashtiring.  
3. Faylga ishga tushish huquqini bering:

   ```bash
   chmod +x AqlliTozalash_macOS.sh
   chmod +x AqlliTozalash.sh
   ```

4. Skriptni ishga tushiring:

   - Agar administrator huquq talab qilinsa:
     ```bash
     sudo ./AqlliTozalash_macOS.sh
     sudo ./AqlliTozalash.sh
     ```

   - Agar ikkala skriptda huquq berilgan bo‘lsa va `sudo` kerak bo‘lmasa:
     ```bash
     ./AqlliTozalash_macOS.sh
     ./AqlliTozalash.sh
     ```

   - (Yoki `bash` orqali chaqirish uchun)
     ```bash
     bash AqlliTozalash_macOS.sh
     bash AqlliTozalash.sh
     ```

---

### Windows PowerShell uchun

1. PowerShell oynasini **administrator** sifatida ishga tushiring.  
2. Agar kerak bo‘lsa, policy sozlang (faqat bir marta):

   ```powershell
   Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
   ```

3. Skript joylashgan papkaga o‘ting:

   ```powershell
   cd \path\to\script
   ```

4. Skriptni ishga tushiring:

   ```powershell
   .\AqlliTozalash.ps1
   ```

---

## 📝 Eslatmalar

- **Root/Administrator huquqlari** skriptlarning to‘liq tizimni tozalashi uchun zarur.  
  Aks holda, skript faqat foydalanuvchi darajasidagi ma’lumotlarni tozalaydi.  
- macOS va Linux uchun yo‘llar va ba’zi buyruqlar farq qilishi mumkin, shuning uchun alohida fayllar yaratildi.  
- Skriptni doimiy va global ishlatish uchun uni `/usr/local/bin/` (macOS/Linux) yoki PowerShell modul sifatida joylashtirish mumkin.  
- Skriptni ehtiyotkorlik bilan ishlating, chunki noto‘g‘ri buyruqlar muhim fayllarni o‘chirishi mumkin.  

---

## 👩‍💻 Qo‘llab-quvvatlash va hissa qo‘shish

Agar xatolik topilsa yoki takliflar bo‘lsa, iltimos, repo orqali **issue** oching yoki **pull request** yuboring.  
Har doim tinglashga tayyormiz va hamkorlikka ochiqmiz!

---

## 📜 Litsenziya

Ushbu skriptlar ochiq manba asosida tarqatiladi.  
Siz ularni erkin o‘zgartirishingiz va tarqatishingiz mumkin.

---

**Let’s keep your system clean and speedy! 🚀**

---

© Solijon Solayev
