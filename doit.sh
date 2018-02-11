// Install ansible
sudo apt-get update
sudo apt-get install software-properties-common
sudo apt-add-repository ppa:ansible/ansible
sudo apt-get update
sudo apt-get install ansible

// Use it to run the other stuff locally
ansible-playbook -i "localhost," -c local orbit.yml 
