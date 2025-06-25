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

