# shell-scripts

**Scritps for daily usage and automation**

# Installation 
## 1 - Clone the repository to ~/.local/bin/
```
git clone git@github.com:Brunobrlk/shell-scripts.git ~/.local/bin
```
Or
```
git clone https://github.com/Brunobrlk/shell-scripts.git ~/.local/bin
```
## 2 - Make it avaiable for usage
Add the following code to your ~/.bashrc file:
```
# Add symbolic links to all scripts in ~/.local/bin/shell-scripts
for script in "$HOME/.local/bin/shell-scripts"/*; do
  if [ -f "$script" ] && [ -x "$script" ]; then
    ln -sf "$script" "$HOME/.local/bin/$(basename "$script")"
  fi
done
```
Or add directly to your path
```k
# Add folder to the path(You might want have this line in your ~/.bashrc file)
export PATH="$PATH:$HOME/.local/bin/shell-scripts"

# Reload bash settings
source ~/.bashrc
```
---
# Usage

Command | Description 
--- | ---
**basedon** | Return which system your OS is based 
**buildc** | Build and executes a c program