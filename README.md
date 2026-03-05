# Dotfiles

Configurazione personale dell'ambiente di sviluppo per **macOS (Apple Silicon)**.

Questo repository permette di configurare rapidamente un ambiente di lavoro completo utilizzando:

- **Homebrew** per la gestione dei pacchetti
- **GNU Stow** per la gestione dei symlink
- **Zsh** come shell
- **Starship** per il prompt del terminale
- **Vim** come editor
- Tool moderni da linea di comando (`fzf`, `ripgrep`, `bat`, ecc.)

L'obiettivo è avere un ambiente **riproducibile, modulare e facile da reinstallare** su una nuova macchina.

---

# Struttura del repository
```
dotfiles/
├─ Brewfile
├─ bin/
│ └─ tmux-pair
├─ zsh/
│ ├─ .zshrc
│ ├─ env.zsh
│ ├─ options.zsh
│ ├─ history.zsh
│ ├─ completion.zsh
│ ├─ keybindings.zsh
│ ├─ colors.zsh
│ └─ dotenv.zsh
├─ vim/
│ ├─ .vimrc
│ └─ .gvimrc
└─ config/
└─ starship.toml
```

---

# Requisiti

- macOS
- Homebrew

Se Homebrew non è installato:

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```
---

# installazione
Clona il repository:
```
git clone https://github.com/lorenzopagano/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
```

Installa tutti i pacchetti definiti nel Brewfile:
```
brew bundle
```
---
# Applicare i dotfiles

Usa stow per creare i link simbolici nella home.
```
stow zsh
stow vim
stow config
stow bin
```

Questo creerà collegamenti come:
```
~/.zshrc -> ~/.dotfiles/zsh/.zshrc
~/.vimrc -> ~/.dotfiles/vim/.vimrc
~/.config/starship.toml -> ~/.dotfiles/config/starship.toml
```
---
# Riavviare la shell
Apri un nuovo terminale oppure esegui:
```
exec zsh
```

Se tutto è configurato correttamente vedrai il prompt Starship.

