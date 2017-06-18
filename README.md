# vagrant
Vagrant by HashiCorp

En cada directorio hay una vm lista para usar
- lamp_base_ansible: Vagrant con un playbook de ansible para instalar apache2 y algunos paquetes básicos.
- lamp_php-crud_ansible: Vagrant con un playbook de ansible para instalar: LAMP + CRUD 100% funcional
- lamp_phpipam: Vagrant con playbook de ansible para instalar phpipam (https://phpipam.net/)
- vagrant03: vagrant de test :)

### Config base
<pre>
VAGRANTFILE_API_VERSION = "2"
Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  
   #acá va todo el bloque
   #https://www.vagrantup.com/docs/
  
end
</pre>


Falta documentar...
