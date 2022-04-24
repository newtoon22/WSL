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

# VcXsrv

VcXsrv es un Windows X-server basado en las fuentes de xorg git (como xming o xwin de cygwin) y se instalará en Windows, creando la aplicación **XLaunch**

[Link del proyecto](https://sourceforge.net/projects/vcxsrv/)

Es solo de descargar e instalar en Windows.

# Xfce

**Xfce** es un entorno de escritorio libre para sistemas tipo Unix como GNU/Linux, BSD, Solaris y derivados y se instalará desde la consola de Ubuntu WSL.

1. Descargar e instalar XFCE en Ubuntu
```bash
sudo apt-get install xfce4-terminal
sudo apt-get install xfce4
```

2. Especificar la pantalla del servidor

1. Abrir bashrc y especificar la posición de la pantalla en 0.0
```bash
cd
sudo nano .bashrc
```

Anadir al final del documento
```bash
export DISPLAY=:0.0
```

# Ejecutando

### En Windows 

1. Hay que abrir *XLaunch*, y usar las opciones
[x] One Large Windows

2. Cambiar *Display number* a 0.

3. El resto de la configuración puede usar la de por defecto y finalizar.

### En Ubuntu

Ejecutar el siguiente comando
```bash
startxfce4
```

# Script

En éste proyecto dejaré un script para instalar y configurar en Linux.

Ejecutar Script
```
sudo chmod +x start.sh
sudo ./start.sh
``` 

### Cambiar la clave de Root en WLS

Siempre que installa WLS desconozco la contraseña, para modificarla se hace desde el shell de Windows.

Abrimos cmd.exe como administrador y escribimos
```
wsl -u root
passwd username
```

Pedirá el usuario que le quieres cambiar la clave y después las claves, finalmente para confimar el cambio podrás hacerlo desde la misma ventana de cmd

```
exit
wsl
sudo echo hola
```

#### Referencia

[WSL - Tutorial (Ingles)](https://github.com/QMonkey/wsl-tutorial)
[Root Passwd WLS - AskUbuntu.com](https://askubuntu.com/questions/931940/unable-to-change-the-root-password-in-windows-10-wsl)


