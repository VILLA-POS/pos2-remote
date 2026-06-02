$image = "juanchooo/pos:print-agent-latest"

Write-Host "Pulling $image..."
docker pull $image

$id = docker create $image
Write-Host "Copying print-agent-windows.exe..."
docker cp "${id}:/opt/bin-staging/print-agent-windows.exe" .
docker rm $id | Out-Null

Write-Host "Done -> $((Get-Location).Path)\print-agent-windows.exe"
