# vagrant
Vagrant by HashiCorp

En cada directorio hay una prueba distinta
- vagrant01: VM simple provision con script en bash para la instalación de un webserver básico.
- vagrant02: VM simple, provision con ansible para levantar un webserver base
- vagrant03: Testing/Beta
- vagrant04: VM ubuntu, provision con ansible + LAMP + CRUD  listo para usar
- vagrant_phpipam: VM ubuntu, provision con ansible + software phpipam

# Config base
<pre>
VAGRANTFILE_API_VERSION = "2"
Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  
   #acá va todo el bloque
   #https://www.vagrantup.com/docs/
  
end
</pre>


Falta documentar...
