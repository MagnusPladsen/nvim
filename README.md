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

## Keybindings Cheat Sheet

### Basic Cursor Movement

| Key | Action                    | Example                   |
| --- | ------------------------- | ------------------------- |
| h   | Move left                 | 5h → Move left 5 times    |
| j   | Move down                 | 5j → Move down 5 times    |
| k   | Move up                   | 5k → Move up 5 times      |
| l   | Move right                | 5l → Move right 5 times   |
| w   | Move to the next word     | 5w → Move forward 5 words |
| b   | Move to the previous word | 5b → Move back 5 words    |

### Deleting (Cutting) Text

| Key  | Action                                                  |
| ---- | ------------------------------------------------------- |
| d    | Delete, needs a motion                                  |
| dw   | Delete word Deletes the next word                       |
| db   | Delete previous word Deletes the word before the cursor |
| dd   | Delete line Deletes the current line                    |
| d12d | Delete 12 lines Deletes the next 12 lines               |

### Copy (Yank) & Paste

| Key | Action                                                |
| --- | ----------------------------------------------------- |
| y   | Yank (copy) selected text                             |
| yw  | Copy word Copies the next word                        |
| yb  | Copy previous word Copies the word before the cursor  |
| p   | Paste text Will replace text if a selection is active |

### Marking & Editing Text

| Key | Action                                            |
| --- | ------------------------------------------------- |
| v   | Enter visual mode (mark text)                     |
| c   | Change (delete marked text and enter insert mode) |
| $   | Go to end of line                                 |
| 0   | Go to start of line                               |
| \_  | Go to start of actual text (ignoring indentation) |

### Leader Key Commands (<SPACE>)

| Key             | Action                                  |
| --------------- | --------------------------------------- |
| <SPACE>         | Open command menu (many options)        |
| <SPACE> + e     | Open file tree                          |
| <SPACE> + o     | Toggle focus between file and file tree |
| <SPACE> + f + g | Search Git files                        |
| <SPACE> + f + f | Search all files                        |

### Insert Mode & Writing

| Key | Action                                     |
| --- | ------------------------------------------ |
| i   | Enter insert mode before cursor            |
| a   | Enter insert mode after cursor             |
| o   | Add a new line below and enter insert mode |
| ESC | Exit to normal mode                        |

### Scrolling & Navigation

| Key | Action |
| CTRL + d | Scroll down |
| CTRL + u | Scroll up |
| gg | Go to the top of the file |
| grr | Find usages of an imported component |
