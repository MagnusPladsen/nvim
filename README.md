# AstroNvim Template

**NOTE:** This is for AstroNvim v4+

A template for getting started with [AstroNvim](https://github.com/AstroNvim/AstroNvim)

## 🛠️ Installation

### Make a backup of your current nvim and shared folder

#### Linux/Mac OS

##### 1 - Make a backup of your current nvim config (if exist)

```shell
mv ~/.config/nvim ~/.config/nvim.bak
```

##### 2 - Clean neovim folders (Optional but recommended)

```shell
mv ~/.local/share/nvim ~/.local/share/nvim.bak
mv ~/.local/state/nvim ~/.local/state/nvim.bak
mv ~/.cache/nvim ~/.cache/nvim.bak
```

##### 3 - Clone the repository

```shell
Terminal window

git clone https://github.com/MagnusPladsen/nvim ~/.config/nvim
# remove template's git connection to set up your own later
rm -rf ~/.config/nvim/.git
```

##### 4 - Start Neovim

```shell
nvim
```

#### Windows

##### 1 - Make a backup of your current nvim config (if exist)

```powershell
Move-Item $env:LOCALAPPDATA\nvim $env:LOCALAPPDATA\nvim.bak
```

##### 2 - Clean neovim folders (Optional but recommended)

```powershell
Move-Item $env:LOCALAPPDATA\nvim-data $env:LOCALAPPDATA\nvim-data.bak
```

##### 3 - Clone the repository

```powershell
git clone https://github.com/MagnusPladsen/nvim ~/.config/nvim
# remove template's git connection to set up your own later
Remove-Item $env:LOCALAPPDATA\nvim\.git -Recurse -Force
```

##### 4 - Start Neovim

```powershell
nvim
```
