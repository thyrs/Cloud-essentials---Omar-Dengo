


useradd -m esteban -s /bin/bash
useradd -m alberto -s /bin/bash
useradd -m andrea -s /bin/bash
useradd -m angie -s /bin/bash
useradd -m armando -s /bin/bash
useradd -m erick -s /bin/bash
useradd -m gabriel -s /bin/bash
useradd -m jeremy -s /bin/bash
useradd -m liss -s /bin/bash
useradd -m melissa -s /bin/bash
useradd -m yazmin -s /bin/bash
useradd -m alex -s /bin/bash


echo "esteban:estebanpass" | sudo chpasswd
echo "alberto:albertopass" | sudo chpasswd
echo "andrea:andreapass" | sudo chpasswd
echo "angie:angiepass" | sudo chpasswd
echo "armando:armandopass" | sudo chpasswd
echo "erick:erickpass" | sudo chpasswd
echo "gabriel:gabrielpass" | sudo chpasswd
echo "jeremy:jeremypass" | sudo chpasswd
echo "liss:lisspass" | sudo chpasswd
echo "melissa:melissapass" | sudo chpasswd
echo "yazmin:yazminpass" | sudo chpasswd
echo "alex:alexpass" | sudo chpasswd

sudo usermod -aG sudo esteban
sudo usermod -aG sudo alberto
sudo usermod -aG sudo andrea
sudo usermod -aG sudo angie
sudo usermod -aG sudo armando
sudo usermod -aG sudo erick
sudo usermod -aG sudo gabriel
sudo usermod -aG sudo jeremy
sudo usermod -aG sudo liss
sudo usermod -aG sudo melissa
sudo usermod -aG sudo yazmin
sudo usermod -aG sudo alex


