# Pide la información al usuario
$gitUser = Read-Host "Por favor, ingresa tu nombre de usuario para Git"
$gitEmail = Read-Host "Ahora, ingresa tu correo electrónico para Git"
$gitRepo = Read-Host "Finalmente, pega el link de tu repositorio de GitHub (con .git)"

# Configura la identidad de Git
Write-Host "`nConfigurando la identidad de Git..."
git config --global user.name "$gitUser"
git config --global user.email "$gitEmail"

# Inicializa el repositorio local
Write-Host "`nInicializando el repositorio local..."
git init

# Conecta con el repositorio de GitHub
Write-Host "`nConectando con el repositorio remoto..."
git remote add origin $gitRepo

Write-Host "`n¡Configuracion completa! Ahora puedes agregar tus archivos y hacer el primer commit."