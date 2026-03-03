# Neovim Minimal Setup (Python/C++/Markdown)

Minimal Configuration but profetional of Neovim with:

- LSP (Python, C++) 
- Autocomplete
- Snippets 
- Treesitter 
- Telescope 
- Markdown preview 
- Airline 
- Keymaps 


# Instalacion 
## Instalacion de dependencias 

Debian/Ubuntu/MXLinux 

```bash
sudo apt update 
sudo apt install git curl build-essential nodejs npm ripgrep
```

Verificar Versiones 
```bash
git --version 
node -- version 
npm --version 
```

## 2 Instalacion de neovim (0.11+ recomendado)
```bash
curl -LO https://github.com/neovim/neovim/releases/download/stable/nvim-linux-x86_64.appimage
chmod +x nvim-linux-x86_64.appimage
sudo mv nvim-linux-x86_64.appimage /usr/local/bin/nvim
```

Verficar:
```bash
nvim --version 
```

## 3 Clonar dotfiles 

```bash 
git clone git@github.com:ovier-oh/nvim_settings.git
```

## 4 Crear symlink 
```bash 
ln -s ~/dotfiles/nvim ~/.config/nvim
```
Si ya existe:
```bash
rm -rf ~/.config/nvim
ln -s ~/dotfiles/nvim ~/.config/nvim
```

## 5 instalar plugins 

Abrir Neovim: 
```bash
nvim
```

Luego:
```bash 
:Lazy sync
```
Esperar a que termine.

## 6 Instalar LSP servers 

Dentro de Neovim 
```bash 
:Mason
```
Asegurarse que estén instalados:

- pyright
- clangd
- lua_ls

## Atajos de teclado 

### Leader Key 
leader = Space 

### Navegacion LSP 

|Key  | Action  |
|---|---|
|gd   | ir definicion   |
|K   |  Documentacion (hover) |
|gr   | Buscar referencias  |
|leader + rn   | Rename simbolo  |
|leader + ca   | Code action  |


### Guardado Salida 

| Key  | Action  |
|---|---|
|leader + q | Salir  |
|leader + x   | Guardar y salir |
|leader + w   | Guardad  | 
|Ctrl + q   | Forzar Salida  |

### Insert mode 
|Key   | Action   |
|---|---|
|jk  | Salir modo normal   |

### Telescope 
|Key | Action|
|----|-------|
|leader + ff   | Buscar archivos  |
|leader + fg   | Buscar Texto     |
|leader + fb   | Buffers abiertos |
|leader + fh   | Help tags        |

### NerdTree 

|key | Action|
|----|-------|
|Ctrl + n| Toggle Explorador |

### Markdown 
|Key | Action|
|----| ------|
|F3 | Toggle MArkdown Preview |

### Snippets 
|key | Action |
|----|--------|
| Tab | Expandir snippet/siguiente campo|
|Shitf + tab | Campo antgerior|
|Enter | Confirmar autocompletado |


