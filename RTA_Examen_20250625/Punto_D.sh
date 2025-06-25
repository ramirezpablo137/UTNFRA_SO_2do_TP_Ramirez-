cd ~/UTN-FRA_SO_Examenes/202406/ansible/
ls -la
cd roles/
ls -la
cd 2do_parcial/
ls -la
cd task
cd tasks/
ls -la
cd
cd ~/UTN-FRA_SO_Examenes/202406/ansible/
ls -la
cd roles/
ls -la
cd 2do_parcial/
ls -la
cd
cd cd .ansible/
cd .ansible/
ls -la
cd tmp
ls -la
ls
cd ..
ls -la
cd tmp
cd ..
cd roles/multi_pruebas/tasks/
cd
cd roles/multi_pruebas/tasks/
cd ~/UTN-FRA_SO_Examenes/202406/ansible/
ls -la
cd roles/
ls -la
2do_parcial/
ls -la
cd 2do_parcial/
ls -la
cd
ls -la
cd ./ansible
cd cd .ansible/
cd .ansible/
ls -la
cd tmp
ls -la
cd
cd ~/UTN-FRA_SO_Examenes/202406/ansible/
ls -la
cd roles
ls -la
cd 2do_parcial/
ls -la
mkdir -p ~/UTN-FRA_SO_Examenes/202406/ansible/roles/2do_parcial/templates
cat <<EOF > ~/UTN-FRA_SO_Examenes/202406/ansible/roles/2do_parcial/templates/datos_alumno.txt.j2
Nombre: Pablo    Apellido: Ramirez
Division: 116
EOF

cat <<EOF > ~/UTN-FRA_SO_Examenes/202406/ansible/roles/2do_parcial/templates/datos_equipo.txt.j2
IP: {{ ansible_default_ipv4.address | default('No-IP') }}
Distribucion: {{ ansible_distribution | default('Desconocido') }}
Cantidad de Cores: {{ ansible_processor_cores | default('Desconocido') }}
EOF

ls -la
cd task
cd tasks/
ls -la
vim main.yml
cd
cd ~/UTN-FRA_SO_Examenes/202406/ansible/
ls -la
vim playbook.yml
ls -la
echo "localhost ansible_connection=local" > hosts
cat host
ls -la
cat hosts
ansible-playbook -i hosts playbook.yml
ansible-playbook -i hosts playbook.yml -K
cat /tmp/2do_parcial/alumno/datos_alumno.txt
cat /tmp/2do_parcial/equipo/datos_equipo.txt
sudo cat /etc/sudoers.d/2psupervisores

