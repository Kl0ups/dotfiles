# dotfiles
All of my configuration files

## Dependencies

### Basics:
 - wget
 - curl
 - git
 - docker
 - npm
 - ripgrep
 - unzip
 - golang
### Oh-My-Zsh
```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" &&
mv -f ~/.zshrc.pre-oh-my-zsh ~/.zshrc
```
### Oh-My-Posh
```bash
curl -s https://ohmyposh.dev/install.sh | bash -s
```
### Kubectl:
```bash
curl -LO https://dl.k8s.io/release/v1.27.3/bin/linux/amd64/kubectl &&
curl -LO "https://dl.k8s.io/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl.sha256" &&
echo "$(cat kubectl.sha256)  kubectl" | sha256sum --check &&
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl &&
rm -ri kubectl kubectl.sha256
```
Check if your version is correct:
```bash
kubectl version --client
```
Check if kubectl configuration is working:
```bash
kubectl cluster-info dump
```
If you have an error message like the following, you need to install Minikube:
```bash
The connection to the server <server-name:port> was refused - did you specify the right host or port?
```
### Minikube:
```bash
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64 &&
sudo install minikube-linux-amd64 /usr/local/bin/minikube &&
rm -ri minikube-linux-amd64
```
If you need to start a local cluster:
```bash
minikube start
```
### Rust
```bash
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```
### Bob & Nvim
```bash
cargo install --git https://github.com/MordechaiHadad/bob.git &&
bob install latest &&
bob use latest
```
### NvChad
Prepare your terminal hack font (by default, FiraCode):
```bash
curl -o font.zip https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/FiraCode.zip &&
unzip font.zip -d ~/.local/share/fonts/ &&
fc-cache -v ~/.local/share/fonts &&
rm -ri font.zip
```
Then, load your font into your terminal profile.
Finally, install nvchad
```bash
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1 && nvim
```
### Kubectl Aliases
```bash
curl -O https://raw.githubusercontent.com/ahmetb/kubectl-aliases/master/.kubectl_aliases &&
mv .kubectl_aliases ~/.kubectl_aliases
```
### Stern
```bash
go install github.com/stern/stern@latest
```
### MiniConda 
```bash
curl -O https://repo.anaconda.com/miniconda/Miniconda3-py311_23.5.2-0-Linux-x86_64.sh &&
sh Miniconda3-py311_23.5.2-0-Linux-x86_64.sh &&
sha256sum Miniconda3-py311_23.5.2-0-Linux-x86_64.sh &&
rm -ri Miniconda3-py311_23.5.2-0-Linux-x86_64.sh
```
Check if it is installed:
```bash
conda list
```
### ZSH Alias Tips
```bash
cd ${ZSH_CUSTOM1:-$ZSH/custom}/plugins &&
git clone https://github.com/djui/alias-tips.git
```
### Rclone
```bash
sudo -v ; curl https://rclone.org/install.sh | sudo bash
```
