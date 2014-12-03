arch=$(uname -m)
if [ "$arch" == "i686" -o "$arch" == "i386" -o "$arch" == "i486" -o "$arch" == "i586" ]; then
flag=1
else
flag=0
fi
echo "Instalando Github"
sudo apt-get install git
echo "Digite seu nome de usuário git (username):"
read user;
git config --global user.name "$user"
echo "Digite seu email git (usermail):"
read mail;
git config --global user.email "$mail"
ssh-keygen -t rsa -C "sshGit"
sudo apt-get install xclip
cat ~/.ssh/id_rsa.pub | xclip -sel clip
ssh git@github.com
cd
mkdir Git
cd Git
git init
echo "Instalado com sucesso!"
