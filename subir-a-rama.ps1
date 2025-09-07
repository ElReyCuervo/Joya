# --- PASO 1: MOSTRAR LOS ARCHIVOS ---
Write-Host "---"
Write-Host "Estos son los archivos en tu carpeta actual:"
ls -File
Write-Host "---"

# --- PASO 2: INFORMACIÓN DEL COMMIT Y LA RAMA ---
$branchName = Read-Host "`nIngresa el nombre de la nueva rama (ej. 'nueva-funcionalidad')"
$commitMessage = Read-Host "Ahora, ingresa un mensaje para el commit (ej. 'Resuelve PROYECTO-25')"

# --- PASO 3: EJECUTAR LOS COMANDOS ---
# Se crea y cambia a la nueva rama
Write-Host "`nCreando y cambiando a la rama '$branchName'..."
git checkout -b $branchName

# Se agrega todos los archivos de una vez para evitar errores
Write-Host "`nAgregando todos los cambios para el commit..."
git add .

Write-Host "`nCreando el commit..."
git commit -m $commitMessage

# Se sincronizan los cambios antes de subir
Write-Host "`nSincronizando con el repositorio remoto..."
git pull origin $branchName

Write-Host "`nSubiendo los cambios a la rama '$branchName'..."
git push -u origin $branchName

Write-Host "`n---"
Write-Host "¡Proceso completado!"
Write-Host "Tus cambios están en la rama '$branchName' en GitHub."
Write-Host "---"