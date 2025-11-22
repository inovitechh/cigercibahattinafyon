#!/bin/bash

# Bu script, projeyi otomatik olarak GitHub reposuna gönderir.
# Kullanım: Terminali açın, bu dosyanın olduğu klasöre gelin ve "sh git_push.sh" yazın.

echo "🚀 Git kurulumu başlatılıyor..."

# 1. Git'i başlat
git init

# 2. Tüm dosyaları ekle
git add .

# 3. İlk güncellemeyi (commit) oluştur
git commit -m "V1.0: Ciğerci Bahattin Web Sitesi Tamamlandı (SEO + Harita + Menü)"

# 4. Ana dal ismini 'main' olarak ayarla
git branch -M main

# 5. Uzak sunucuyu (Remote) ekle
# Eğer daha önce eklendiyse hata vermemesi için önce silmeyi dener, sonra ekleriz.
git remote remove origin 2>/dev/null
git remote add origin https://github.com/inovitechh/cigercibahattinafyon.git

echo "✅ Uzak sunucu adresi tanımlandı: https://github.com/inovitechh/cigercibahattinafyon.git"

# 6. Kodları gönder (Push)
echo "📦 Kodlar GitHub'a gönderiliyor..."
git push -u origin main

echo "🎉 İşlem tamamlandı! Kodların yüklendi."