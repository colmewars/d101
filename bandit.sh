echo "descargando codigod de aplicacion vulnerable"
sudo git clone https://github.com/visium/django.nV.git webapp
echo "accediendo a la carperta contendero del codigo"
cd webpapp
echo "instanlando pythop pip"
sudo apt-get update
sudo apt install python3-pip
sudo pip3 install bandit
sido bandit -r . -f json | tee bandit-output.json

sudo docker pull hysnsec/bandit
cd webapp 
sudo docker run --user $(id -u);%(id -g) --rm hysnsec/bandit -r . -f jason -o ./bandit-output.json
