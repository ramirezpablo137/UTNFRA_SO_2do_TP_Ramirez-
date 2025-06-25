sudo apt update
sudo apt install git -y
git clone https://github.com/upszot/UTN-FRA_SO_Examenes.git
cd UTN-FRA_SO_Examenes
ls -la
cd 202406
ls -la
./script_Precondicion.sh
source  ~/.bashrc  && history -a
cd
pwd
ls -la
lsblk
sudo fdisk -l
git --version
sudo apt install wget gpg
UBUNTU_CODENAME=jammy
wget -O- "https://keyserver.ubuntu.com/pks/lookup?fingerprint=on&op=get&search=0x6125E2A8C77F2818FB7BD15B93C4A3FD7BB9C367" | sudo gpg --dearmour -o /usr/share/keyrings/ansible-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/ansible-archive-keyring.gpg] http://ppa.launchpad.net/ansible/ansible/ubuntu $UBUNTU_CODENAME main" | sudo tee /etc/apt/sources.list.d/ansible.list
sudo apt update && sudo apt install ansible
ansible --version
# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc
# Add the repository to Apt sources:
echo   "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "${UBUNTU_CODENAME:-$VERSION_CODENAME}") stable" |   sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo docker run hello-world
sudo fdisk /dev/sdc
sudo fdisk /dev/sdd
sudo fdisk -l
lsblk
sudo pvcreate /dev/sdd1 /dev/sdd2 /dev/sdc1
sudo pvs
sudo vgcreate vg_datos /dev/sdd1 /dev/sdd2
sudo vgcreate vg_temp /dev/sdc1
sudo vgs
sudo lvcreate -L +5M vg_datos -n lv_docker
sudo lvcreate -l +100%FREE vg_datos -n lv_workareas
sudo lvcreate -L +512M vg_temp -n lv_swap
sudo lvcreate -l +100%FREE vg_temp -n lv_swap
sudo lvs
sudo pvs
lsblk
sudo mkfs.ext4 /dev/mapper/vg_datos-lv_docker
sudo mkfs.ext4 /dev/mapper/vg_datos-lv_workareas
sudo mkswap  /dev/mapper/vg_temp-lv_swap
sudo swapon  /dev/mapper/vg_temp-lv_swap
free -h
sudo mkdir -p /var/lib/docker
sudo mkdir -p /work
sudo mount /dev/mapper/vg_datos-lv_docker /var/lib/docker/
sudo mount /dev/mapper/vg_datos-lv_workareas /work/
df -h
cd /
ls -la
sudo systemctl restart docker
sudo systemctl status docker
ls -l /work
cd
pwd
cat ~/.bash_history
ls -la
cd RTA_Examen_20250625/
ls -la
vim ./Punto_A.sh 
cd
pwd
ls -la
cd RTA_Examen_20250625/
ls -la
vim Punto_B.sh 
cd
cd /
ls -la
cd usr
ls -la
cd
ls -la
cd RTA_Examen_20250625/
ls -la
cd /.Punto_B.sh
cd Punto.sh
cd ./Punto.sh
cd /Punto.sh
cd /.Punto_B.sh
cd /Punto_B.sh
ls -la
cd
cd /usr/local/bin/<tu-apellido>AltaUser-Groups.sh
cd /usr/local/bin/ramirezAltaUser-Groups.sh
cd /usr/local/bin/RamirezAltaUser-Groups.sh
cd /usr/local/bin
ls -la
cd
sudo vim /usr/local/bin/RamirezAltaUser-Groups.sh
sudo chmod +x /usr/local/bin/RamirezAltaUser-Groups.sh
sudo /usr/local/bin/ramirezAltaUser-Groups.sh vagrant /home/ramirezpablo137/Lista_Usuarios.txt
ls -l /usr/local/bin/RamirezAltaUser-Groups.sh
ls -l /usr/local/bin/ramirezAltaUser-Groups.sh
ls -l /usr/local/bin/RamirezAltaUser-Groups.sh
vim /home/ramirezpablo137/Lista_Usuarios.txt
rm /home/ramirezpablo137/Lista_Usuarios.txt
ls -la
whoami
vim /home/pablo/Lista_Usuarios.txt
sudo chmod +x /usr/local/bin/RamirezAltaUser-Groups.sh
sudo /usr/local/bin/ramirezAltaUser-Groups.sh
./RamirezAltaUser-Groups.sh Lista_Usuarios.txt
chmod +x ~/RamirezAltaUser-Groups.sh
./RamirezAltaUser-Groups.sh Lista_Usuarios.txt
sudo /usr/local/bin/RamirezAltaUser-Groups.sh /home/pablo/Lista_Usuarios.txt
sudo /usr/local/bin/RamirezAltaUser-Groups.sh pablo /home/pablo/Lista_Usuarios.txt
ls -la
vim /home/pablo/Lista_Usuarios.txt
sudo /usr/local/bin/RamirezAltaUser-Groups.sh pablo /home/pablo/Lista_Usuarios.txt
vim /home/pablo/Lista_Usuarios.txt
sudo /usr/local/bin/RamirezAltaUser-Groups.sh pablo /home/pablo/Lista_Usuarios.txt
vim /home/pablo/Lista_Usuarios.txt
sudo /usr/local/bin/RamirezAltaUser-Groups.sh pablo /home/pablo/Lista_Usuarios.txt
ls -la
cp /usr/local/bin/RamirezAltaUser-Groups.sh
cd RTA_Examen_20250625/
ls -la
cd
pwd
cp /usr/local/bin/RamirezAltaUser-Groups.sh ~/RTA_Examen_20250625/Punto_B.sh
cp ~/Lista_Usuarios.txt ~/RTA_Examen_20250625/
cd RTA_Examen_20250625/
ls -la
vim Punto_B.sh
cd
clear
cd ~/UTN-FRA_SO_Examenes/202406/docker/
sudo usermod -aG docker pablo
ls -la
vim index.html
vim dockerfile
ls -la
docker login -u 24pabloo
vim index.html
docker build -t 24pabloo/web1-ramirez:latest .
cd ~/UTN-FRA_SO_Examenes/202406/docker/
docker build -t 24pabloo/web1-ramirez:latest .
ls
vim docker-compose.yml
sudo docker compose up -d
ls -la
vim run.sh
chmod +x run.sh
sudo docker compose up -d
docker login -u 24pabloo
sudo docker images
sudo docker push 24pabloo/web1-ramirez:latest
ls -la
vim dockerfile
vim index.html
vim docker-compose.yml
docker ps
vim docker-compose.yml
docker ps -a
ls -la
vim index.html
vim dockerfile  
ls -la
docker ps -a
curl -i http://localhost:8080
vim Dockerfile
vim dockerfile
vim docker-compose.yml
docker run -d -p 8080:80 --name web1-ramirez-container 24pabloo/web1-ramirez:latest
curl -i http://localhost:8080
clear
vim run.sh
history
cat ~/.bash_history
cd
ls -la
cd RTA_Examen_20250625/
ls -la
vim Punto_C.sh 
ls -la
cd
ls -la
cd ./ansible
cd .ansible/
cd
cd RTA_Examen_20250625/
ls-la
ls -la
cd
ls -la
cd UTN-FRA_SO_Examenes/
ls -la
cd 202406
ls -la
cd docker
ls -la
vim dockerfile
vim docker-compose.yml 
cd
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
cat ~/.bash_history
cd
cd RTA_Examen_20250625/
ls -la
vim Punto_D.sh 
vim Punto_C.sh 
vim Punto_A.sh 
cd
vim ~/.bash_history
ls -l ~/.bash_history
vim ~/.bash_history
E325: ATTENTION
Found a swap file by the name "~/.bash_history.swp"
While opening file "/home/pablo/.bash_history"
(1) Another program may be editing the same file.  If this is the case,
(2) An edit session for this file crashed.
Swap file "~/.bash_history.swp" already exists!
[O]pen Read-Only, (E)dit anyway, (R)ecover, (D)elete it, (Q)uit, (A)bort:
vim ~/.bash_history
history -a
git clone https://github.com/ramirezpablo137/UTNFRA_SO_2do_TP_Ramirez-.git
ls -la
cd UTN-FRA_SO_Examenes/
ls -la
cd 202406
ls -la
cd
cd RTA_Examen_20250625/
cd
ls -la
