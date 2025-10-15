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

## 📥 Yuklab olish yoki o‘rnatish

### 1️⃣ Git orqali (tavsiya etiladi)

Agar sizda `git` o‘rnatilgan bo‘lsa, quyidagi buyruq yordamida repozitoriyani klonlang:

```bash
git clone https://github.com/solijonsolayev/AqlliTozalash.git
```

So‘ngra papkaga kiring:

```bash
cd AqlliTozalash
```

### 2️⃣ ZIP fayl orqali

Agar `git` o‘rnatilmagan bo‘lsa:

1. Repozitoriya sahifasiga o‘ting: [AqlliTozalash GitHub’da](https://github.com/SolijonSolayev/AqlliTozalash)  
2. Yashil **Code** tugmasini bosing  
3. “**Download ZIP**” ni tanlang va arxivni oching  

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

Takliflar yoki xatoliklar bo‘lsa — [**Issue**](https://github.com/SolijonSolayev/AqlliTozalash/issues) oching yoki [**Pull Request**](https://github.com/SolijonSolayev/AqlliTozalash/pulls) yuboring.  
Hamjamiyat yordami har doim qadrlanadi! 💪 

📫 Aloqa: [@Solijon_Solayev](https://taplink.cc/solijon_solayev)

---

## 📜 Litsenziya — [GNU GENERAL PUBLIC LICENSE v3.0](https://github.com/solijon-solayev/AqlliTozalash/blob/main/LICENSE)

Ushbu loyiha **[GNU General Public License v3.0 (GPL-3.0)](https://www.gnu.org/licenses/gpl-3.0.html)** ostida tarqatiladi. Asosiy shartlar:

- Siz kodni **erkin foydalanishingiz, o‘zgartirishingiz va tarqatishingiz** mumkin.  
- **Mualliflik (© Solijon Solayev)** har doim ko‘rsatilishi **majburiy**.  
- Agar siz o‘zgartirishlar kiritgan bo‘lsangiz, bu **aniq ko‘rsatilishi** kerak (header yoki README’da).  
- Har qanday tarqatilgan o‘zgartirilgan versiya ham **GPL-3.0** ostida bo‘lishi shart.  
- Kod **yopiq** tarzda qayta tarqatilishi yoki mualliflikni o‘zgartirish **taqiqlanadi**.

To‘liq litsenziya matni uchun: [LICENSE fayli](https://github.com/solijon-solayev/AqlliTozalash/blob/main/LICENSE)


---

**Let’s keep your system clean and speedy! 🚀**

---

© 2025 [Solijon Solayev](https://SolijonSolayev.github.io)
