# Instalar WSL en Windows 10

1. Click derecho sobre el icono de Windows, y abrir el *Windows PowerShell (Administrador)*
2. Teclear el siguiente codigo
```PowerShell
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux
```

3. Reiniciar el ordenador.
4. Ir a la Tienda de Windows y buscar Ubuntu
5. Descargar e Instalar la versión de Ubuntu que más le guste.
6. Crear un usuario.

**TIP**: La carpeta Ubuntu está contenida en la dirección:
```
C:\Users\Usuario\AppData\Local\Packages\CanonicalGroupLimited.UbuntuonWindows######\LocalState\rootfs\home\user
````
Donde el nombre *CanonicalGroupLimited.UbuntuonWindows* es personalizado, así que recomiendo usarlos hasta *C:\Users\Usuario\AppData\Local\Packages\*


##### Referencia: 
* [Install WSL - Microsoft](https://docs.microsoft.com/en-us/windows/wsl/install-win10)
* [Windows Subsystem for Linux - Wikipedia](https://es.wikipedia.org/wiki/Windows_Subsystem_for_Linux)


