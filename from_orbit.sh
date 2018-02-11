sudo apt-add-repository ppa:ansible/ansible
sudo apt update
sudo apt install ansible git software-properties-common

mkdir -p ~/repos
cd repos
rm -rf skeleton
git clone git@github.com:meawoppl/skeleton.git
cd skeleton

# Use it to run the other stuff locally
ansible-playbook -i "localhost," -c local orbit.yml 
