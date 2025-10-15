# 🧹 AqlliTozalash Skriptlari To‘plami

**AqlliTozalash** — macOS, Linux va Windows uchun mo‘ljallangan uchta samarali tozalash skriptlari to‘plami.  
Maqsad — tizimni keraksiz fayllardan tozalash, joy bo‘shatish va ishlash tezligini oshirish ⚡

---

## 📦 Tarkibi

| Operatsion tizim | Fayl nomi | Turi |
|------------------|------------|------|
| 🍏 macOS | `AqlliTozalash_macOS.sh` | Bash skript |
| 🐧 Linux | `AqlliTozalash.sh` | Bash skript |
| 🪟 Windows | `AqlliTozalash.ps1` | PowerShell skript |

---

## 🧰 Talablar

### 🔹 macOS/Linux (`.sh` skriptlar)
- **Bash shell** (3.x yoki 4.x)
- **Terminal** orqali ishga tushirish
- Ba’zi buyruqlar uchun **`sudo`** ruxsati talab qilinadi

### 🔹 Windows PowerShell (`.ps1` skript)
- **PowerShell 5.1** yoki **PowerShell 7+ (Core)** tavsiya etiladi  
- `Set-ExecutionPolicy RemoteSigned` yoki `Bypass` bo‘lishi lozim  
- **Administrator huquqi** tavsiya etiladi

---

## ⚙️ Ishga tushirish qo‘llanmasi

### 🐧 macOS/Linux uchun
```bash
# 1. Terminalni oching
# 2. Skript faylini yuklab oling va kerakli papkaga joylashtiring
# 3. Ishga tushish huquqini bering
chmod +x AqlliTozalash_macOS.sh
chmod +x AqlliTozalash.sh

# 4. Skriptni ishga tushiring (agar sudo kerak bo'lsa)
sudo ./AqlliTozalash_macOS.sh
sudo ./AqlliTozalash.sh

# (yoki sudo bo‘lmasa)
./AqlliTozalash_macOS.sh
./AqlliTozalash.sh

# (yoki bash orqali)
bash AqlliTozalash_macOS.sh
bash AqlliTozalash.sh
```

---

### 🪟 Windows PowerShell uchun
```powershell
# 1. PowerShell’ni Administrator sifatida ishga tushiring
# 2. Policy sozlash (bir marta)
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser

# 3. Skript joylashgan papkaga o‘ting
cd \path\to\script

# 4. Skriptni ishga tushiring
.\AqlliTozalash.ps1
```

---

## 💡 Eslatmalar

> ⚠️ **Ehtiyot bo‘ling:** noto‘g‘ri buyruqlar muhim fayllarni o‘chirishi mumkin.

- Root/Administrator huquqlari to‘liq tizim tozaligi uchun zarur.  
- macOS va Linux buyruqlari farq qilgani sababli alohida fayllar ishlab chiqilgan.  
- Doimiy foydalanish uchun skriptni quyidagi yo‘llarga joylashtirish mumkin:
  - macOS/Linux → `/usr/local/bin/`
  - Windows → PowerShell modul sifatida  
- Foydalanishdan oldin faylni ko‘rib chiqish va zaxira olish tavsiya etiladi.

---

## 🤝 Hissa qo‘shish va aloqa

Takliflar yoki xatoliklar bo‘lsa — **Issue** oching yoki **Pull Request** yuboring.  
Hamjamiyat yordami har doim qadrlanadi! 💪  

📫 Aloqa: [@Solijon_Solayev](https://taplink.cc/solijon_solayev)

---

## 📜 Litsenziya — GNU GENERAL PUBLIC LICENSE v3.0

Ushbu loyiha **GNU General Public License v3.0 (GPL-3.0)** ostida tarqatiladi. Asosiy shartlar:

- Siz kodni **erkin foydalanishingiz, o‘zgartirishingiz va tarqatishingiz** mumkin.
- **Mualliflik (© Solijon Solayev)** har doim ko‘rsatilishi **majburiy**.
- Agar siz o‘zgartirishlar kiritgan bo‘lsangiz, bu **aniq ko‘rsatilishi** kerak (change log, header yoki README’da).
- Har qanday tarqatilgan o‘zgartirilgan versiya ham **GPL-3.0** ostida bo‘lishi shart (ya’ni ochiq qoladi).
- Kod **yopiq** tarzda qayta tarqatilishi yoki “men yozdim” deb talqin qilinishi mumkin emas.

To‘liq litsenziya matnini `LICENSE` faylida topishingiz mumkin yoki rasmiy sahifaga qarang: https://www.gnu.org/licenses/gpl-3.0.html

---

**Let’s keep your system clean and speedy! 🚀**

---

© 2025 Solijon Solayev
