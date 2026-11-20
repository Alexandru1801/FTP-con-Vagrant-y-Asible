# FTP con Vagrant y Ansible como nodo controlador

- **Autor:** Alexandru
- **Repositorio:** https://github.com/Alexandru1801/FTP-con-Vagrant-y-Asible.git

## Objetivo del proyecto

Con este proyecto vamos a desplegar y configurar de forma automática, mediante Vagrant y Ansible, una red privada con tres máquinas virtuales para ofrecer un servicio DNS, un servidor web y un servidor FTP, con control de acceso por usuarios locales y permisos de publicación web.

## Herramientas utilizadas

- **GitHub:** Control de versiones y seguimiento de tareas mediante tablero e issues.
- **Vagrant y VirtualBox:** Creación y gestión de las máquinas virtuales en red privada.
- **Ansible:** Automatización de la instalación y configuración de los servicios.
- **BIND9:** Servidor DNS.
- **Apache2:** Servidor web HTTP.
- **vsftpd:** Servidor FTP con cifrado TLS.
- **FileZilla / WinSCP:** Cliente FTP gráfico para comprobar el acceso, los certificados y la subida de archivos.

## Instrucciones iniciales de uso

### Requisitos
- Tener instalados **Git**, **VirtualBox** y **Vagrant** en el equipo anfitrión.

### Puesta en marcha
1. Clonar el repositorio y entrar en la carpeta del proyecto:
