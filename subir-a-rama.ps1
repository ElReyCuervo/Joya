# --- PASO 1: MOSTRAR LOS ARCHIVOS ---
Write-Host "---"
Write-Host "Estos son los archivos en tu carpeta actual:"
ls -File
Write-Host "---"

# --- PASO 2: SELECCIÓN DE ARCHIVOS (git add) ---
Write-Host "`nEscribe 'todos' para agregar todos los cambios."
Write-Host "O bien, escribe el nombre de un archivo (ej. 'index.html')."
Write-Host "Escribe 'listo' cuando hayas terminado."

$addOption = ""
do {
    $addOption = Read-Host "Archivo a agregar"
    if ($addOption -eq "todos") {
        git add .
        break
    } elseif ($addOption -ne "listo") {
        git add $addOption
    }
} while ($addOption -ne "listo")

# --- PASO 3: INFORMACIÓN DEL COMMIT Y LA RAMA ---
$branchName = Read-Host "`nIngresa el nombre de la rama a la que quieres subir (ej. 'feature/nueva-funcionalidad')"
$commitMessage = Read-Host "Ahora, ingresa un mensaje para el commit (ej. 'Resuelve PROYECTO-25')"

# --- PASO 4: EJECUTAR LOS COMANDOS ---
Write-Host "`nCreando el commit..."
git commit -m $commitMessage

Write-Host "`nSubiendo los cambios a la rama '$branchName'..."
git push -u origin $branchName

Write-Host "`n---"
Write-Host "¡Proceso completado!"
Write-Host "Tus cambios están en la rama '$branchName' en GitHub."
Write-Host "---"