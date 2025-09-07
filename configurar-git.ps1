# Pide la información al usuario
$gitUser = Read-Host "Por favor, ingresa tu nombre de usuario para Git"
$gitEmail = Read-Host "Ahora, ingresa tu correo electrónico para Git"
$gitRepo = Read-Host "Finalmente, pega el link de tu repositorio de GitHub al final coloca .git"

# Configura la identidad de Git
Write-Host "`nConfigurando la identidad de Git..."
git config --global user.name "$gitUser"
git config --global user.email "$gitEmail"

# Inicializa el repositorio local y el primer commit
Write-Host "`nInicializando el repositorio..."
git init
git add .
git commit -m "Commit inicial del proyecto"

# Conecta y sube el repositorio a GitHub
Write-Host "`nConectando con GitHub y subiendo el proyecto..."
git branch -M main
git remote add origin $gitRepo
git push -u origin main

Write-Host "`n¡Todo listo! Tu proyecto ha sido subido a GitHub con éxito."