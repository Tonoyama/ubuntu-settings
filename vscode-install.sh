sudo apt update
sudo apt upgrade -y
# 日本語入力をインストール
sudo apt install ibus-mozc -y
ibus restart
gsettings set org.gnome.desktop.input-sources sources "[('xkb', 'jp'), ('ibus', 'mozc-jp')]"
sudo apt install vim -y
sudo apt install -y git
# VS Codeをインストール
sudo apt install software-properties-common apt-transport-https wget -y
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt install code -y

# Source Han Code JPフォントをインストールする
cd
git clone https://github.com/adobe-type-tools/opentype-svg.git
git clone https://github.com/adobe-fonts/source-han-code-jp.git
sudo apt install python3-virtualenv -y
sudo apt install python3.8-venv -y
cd source-han-code-jp
python3 -m venv afdko_env
source afdko_env/bin/activate
pip3 install afdko
cp ../opentype-svg/*.py .
cp -r ../opentype-svg/util .
cp -r ../opentype-svg/imgs .
cp -r ../opentype-svg/fonts .
./commands.sh
mkdir ~/.fonts
cp ./*/*.otf ~/.fonts
fc-cache -fv
deactivate
