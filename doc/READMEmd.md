# Despliegue automatizado de infraestructura con Vagrant y Ansible (DNS, Web y FTPES)

**Autor:** Alexandru  
**Repositorio:** `https://github.com/Alexandru1801/FTP-con-Vagrant-y-Asible.git`  
**Dominio:** `alexandru.test` (`192.168.57.0/24`)  
**Nodos:** `dns` (`192.168.57.5`), `ansible` (`192.168.57.6`) y `negocio` (`192.168.57.7`)

---

## 1. Preparación del entorno, repositorio e infraestructura base (Vagrant)

En esta primera fase se estructura el repositorio local vinculado con GitHub, configurando `.gitignore` para proteger archivos sensibles y definiendo las máquinas virtuales (`dns`, `ansible` y `negocio`) en el fichero `Vagrantfile`, junto con el script de aprovisionamiento `script/ansible.sh`.

1. **Creación del script de aprovisionamiento (`script/ansible.sh`) y subida a GitHub:**  
   ![Creación del script de aprovisionamiento](../doc/6.1.png)

2. **Configuración de requisitos (`requirements.yml`) y cierre de issues iniciales (`#10`, `#11`, `#12`):**  
   ![Configuración de requirements y issues iniciales](../doc/6.2.png)

3. **Creación de `Vagrantfile` y `.gitignore`:**  
   ![Creación de Vagrantfile y .gitignore](../doc/6.3.png)

4. **Contenido del fichero `Vagrantfile`:**  
   ![Contenido de Vagrantfile](../doc/contenido-vagrantfile.png)

5. **Estado de las máquinas virtuales (`MQV funcionando`):**  
   ![Máquinas virtuales funcionando](../doc/MQV%20funcionando.png)

---

## 2. Configuración del nodo de control Ansible

A continuación se prepara el entorno de control desde el nodo `ansible` (`192.168.57.6`), configurando la conexión SSH sin contraseña hacia el resto de nodos, el fichero `ansible.cfg` y el inventario `inventory.yml`.

1. **Configuración de `ssh-config`:**  
   ![Configuración SSH](../doc/ssh-config.png)

2. **Comprobación de conexión SSH (`funciona_conexion_ssh`):**  
   ![Conexión SSH funcionando](../doc/funciona_conexion_ssh.png)

3. **Creación de `ansible.cfg` (`crear_ansible-cfg`):**  
   ![Creación de ansible.cfg](../doc/crear_ansible-cfg.png)

4. **Creación de `inventory.yml` (`crear_inventory-yml`):**  
   ![Creación de inventory.yml](../doc/crear_inventory-yml.png)

5. **Comprobación de lectura del inventario desde Vagrant (`vagrant-puede-leer-inventory`):**  
   ![Vagrant puede leer inventory](../doc/vagrant-puede-leer-inventory.png)

6. **Comprobación del comando `uptime` (`comando_uptime_funciona`):**  
   ![Comando uptime funcionando](../doc/comando_uptime_funciona.png)

---

## 3. Gestión segura de credenciales con Ansible Vault

Para evitar almacenar contraseñas en texto plano dentro del repositorio, se utiliza `ansible-vault` para cifrar las credenciales de los usuarios del sistema (`ana` y `juan`).

1. **Creación del fichero de ejemplo del Vault (`creamos-vaultexample`):**  
   ![Creación de vault example](../doc/creamos-vaultexample.png)

2. **Generación de contraseñas (`generamos-contrasenas`):**  
   ![Generación de contraseñas](../doc/generamos-contrasenas.png)

3. **Fichero de contraseñas (`contrase as`):**  
   ![Fichero de contraseñas](../doc/contrase%20as.png)

4. **Creación del playbook `ansible.yml` para contraseñas (`creamos-ansibleyml-para-contrasenas`):**  
   ![Playbook ansible.yml para contraseñas](../doc/creamos-ansibleyml-para-contrasenas.png)

5. **Ejecución correcta del playbook de contraseñas (`playbokk-contrasenas-funionaa`):**  
   ![Playbook de contraseñas funcionando](../doc/playbokk-contrasenas-funionaa.png)

---

## 4. Aprovisionamiento del Servidor DNS (`bind9`)

Se automatiza la instalación y configuración de `bind9` en la máquina `dns` (`192.168.57.5`) para resolver el dominio `alexandru.test` y su zona inversa `57.168.192.in-addr.arpa`.

1. **Árbol de archivos del aprovisionamiento DNS (`arbol-archivos-provisionamiento`):**  
   ![Árbol de archivos DNS](../doc/arbol-archivos-provisionamiento.png)

2. **Archivos de configuración de DNS (`dns-files`):**  
   ![Archivos DNS](../doc/dns-files.png)

3. **Configuración del playbook `dns.yml` (`dns-yml-configurado`):**  
   ![Playbook dns.yml configurado](../doc/dns-yml-configurado.png)

4. **Opciones del servidor (`named-conf-options`):**  
   ![Opciones de named.conf.options](../doc/named-conf-options.png)

5. **Zona directa (`zona-directa`):**  
   ![Zona directa](../doc/zona-directa.png)

6. **Inclusión de zona inversa (`incluir-zona-inversa`):**  
   ![Zona inversa](../doc/incluir-zona-inversa.png)

7. **Permisos de los ficheros de zona (`permisos-zona`):**  
   ![Permisos de zona](../doc/permisos-zona.png)

8. **IP del servidor DNS (`poner-ip-servidor-DNS`):**  
   ![IP del servidor DNS](../doc/poner-ip-servidor-DNS.png)

9. **Registros DNS para `negocio` (`poner-registros-dns-negocio`):**  
   ![Registros DNS de negocio](../doc/poner-registros-dns-negocio.png)

10. **Registro `CNAME` para `negocio` (`poner-CNAME-negocio`):**  
    ![CNAME de negocio](../doc/poner-CNAME-negocio.png)

11. **Registro `CNAME` para `ftp-negocio` (`poner-CNAME-ftp-negocio`):**  
    ![CNAME de ftp-negocio](../doc/poner-CNAME-ftp-negocio.png)

12. **Prueba de resolución DNS (`test-dns`):**  
    ![Test DNS](../doc/test-dns.png)

13. **Servidor DNS funcionando (`servidor-dns-funcionando`):**  
    ![Servidor DNS funcionando](../doc/servidor-dns-funcionando.png)

14. **Incidencia durante las pruebas (`error-sin sentido`):**  
    ![Incidencia de prueba](../doc/error-sin%20sentido.png)

---

## 5. Aprovisionamiento del Servidor Web (`Apache2`)

En el servidor `negocio` (`192.168.57.7`) se instala y habilita Apache HTTP Server junto con la estructura de archivos web inicial en `/var/www/html`.

1. **Archivos web creados (`web-files-creado`):**  
   ![Archivos web creados](../doc/web-files-creado.png)

2. **Creación de página de prueba web (`creamos-test-web`):**  
   ![Creación de test web](../doc/creamos-test-web.png)

3. **Ejecución del playbook de Apache (`apache-funciona-correctamente`):**  
   ![Playbook de Apache ejecutado](../doc/apache-funciona-correctamente.png)

4. **Checkeo del playbook correcto (`checkeo-playbock-correcto`):**  
   ![Checkeo de playbook correcto](../doc/checkeo-playbock-correcto.png)

5. **Acceso a la web funcionando (`acceso-a-web-funciona`):**  
   ![Acceso a web funcionando](../doc/acceso-a-web-funciona.png)

---

## 6. Aprovisionamiento y pruebas del Servidor FTP seguro (`vsftpd` + FTPES)

Por último, se despliega `vsftpd` sobre `negocio` (`192.168.57.7`) configurado en modo aislado (`listen=YES`, `listen_ipv6=NO`), sin acceso anónimo, con cifrado explícito sobre TLS (`FTPES` mediante certificado autofirmado), enjaulamiento (`chroot`) para `juan` y permisos de publicación en `/var/www/html` para `ana` a través del grupo `webpublish`.

1. **Conexión FTPES con `ana` por nombre (`ftp.alexandru.test`) y acceso a `/var/www/html` (`a` y `a_2`):**  
   ![Conexión FTPES con ana y acceso a /var/www/html](../doc/a.png)  
   ![Listado de /var/www/html con ana](../doc/a_2.png)

2. **Subida de fichero `index.html` modificado por `ana` (`b` y `c`):**  
   ![Transferencia correcta de index.html con ana](../doc/b.png)  
   ![Comprobación de subida de index.html con ana](../doc/c.png)

3. **Configuración de perfil y prueba de enjaulamiento con `juan` (`a1` y `b2`):**  
   ![Gestor de sitios de FileZilla para FTP-Negocio-Juan](../doc/a1.png)  
   ![Conexión FTPES con juan en directorio enjaulado](../doc/b2.png)