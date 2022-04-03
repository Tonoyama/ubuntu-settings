## nvidia driver

```
ubuntu-drivers devices
```

```
sudo -E add-apt-repository ppa:graphics-drivers/ppa
sudo apt update
sudo apt install nvidia-driver-470 -y
```

ただし、この方法はCUDAのバージョンを選べないので注意。

```
sudo apt install nvidia-cuda-toolkit -y
sudo reboot
```

```
nvidia-smi
```

## cuDNN

```
sudo dpkg -i libcudnn8_8.2.4.15-1+cuda11.4_amd64.deb
sudo dpkg -i libcudnn8-dev_8.2.4.15-1+cuda11.4_amd64.deb 
```

```
dpkg -l | grep nvidia
dpkg -l | grep cuda
dpkg -l | grep cudnn
```

## pyenv

```
git clone https://github.com/pyenv/pyenv.git ~/.pyenv
```

```
vim ~/.bashrc
```

```
export PYENV_ROOT=$HOME/.pyenv
export PATH=$PYENV_ROOT/bin:$PATH
if command -v pyenv 1>/dev/null 2>&1; then
    eval "$(pyenv init --path)"
    eval "$(pyenv init -)"
fi
```


```
source ~/.bashrc
```

## virtualenv

```
sudo apt install -y gcc make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev
```

```
git clone https://github.com/pyenv/pyenv-virtualenv.git $(pyenv root)/plugins/pyenv-virtualenv
```

```
vim ~/.bashrc
```

```
eval "$(pyenv virtualenv-init -)"
```

```
ls ~/.pyenv/versions
```
