sudo apt-add-repository ppa:ansible/ansible
sudo apt update
sudo apt-get install -y ansible git software-properties-common

mkdir -p ~/repos
cd repos
rm -rf skeleton
git clone https://github.com/meawoppl/skeleton.git
cd skeleton

# Use it to run the other stuff locally
ansible-playbook --become -i "localhost," -c local orbit.yml 
