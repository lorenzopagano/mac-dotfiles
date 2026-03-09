# ~/.dotfiles

## Installazione
- `git clone git@github.com:lorenzopagano/dotfiles.git ~/.dotfiles`
- `cd ~/.dotfiles`
- `brew bundle`
- `rake install`

Il task `install` di rake creerà dei **link simbolici (symlink)** dai file appropriati presenti in `.dotfiles` alla tua directory home. Tuttavia tutta la configurazione e le personalizzazioni rimangono dentro `~/.dotfiles`.

Il primo file che probabilmente vorrai modificare subito è `zsh/zshrc.symlink`, che imposta alcuni percorsi che saranno diversi sulla tua macchina.

## Organizzazione per argomenti

Tutto è organizzato per **aree tematiche**. Se vuoi aggiungere una nuova area al tuo fork dei dotfiles — ad esempio “Java” — puoi semplicemente aggiungere una directory `java` e inserirci i file.

Qualsiasi file con estensione `.zsh` verrà incluso automaticamente nella tua shell.  
Qualsiasi file con estensione `.symlink` verrà collegato tramite link simbolico (senza estensione) nella directory `$HOME` quando esegui `rake install`.

## Componenti

Ci sono alcuni file speciali nella struttura delle directory.

- **bin/**: qualsiasi cosa dentro `bin/` verrà aggiunta al tuo `$PATH` e sarà disponibile ovunque.
- **topic/*.zsh**: tutti i file che terminano con `.zsh` vengono caricati nel tuo ambiente.
- **topic/*.symlink**: tutti i file che terminano con `.symlink` vengono collegati tramite link simbolico nella directory `$HOME`. Questo permette di mantenerli versionati nei dotfiles ma allo stesso tempo averli caricati automaticamente nella home directory. I link simbolici vengono creati quando esegui `rake install`.
- **topic/*.completion.sh**: tutti i file che terminano con `completion.sh` vengono caricati per ultimi, in modo che vengano eseguiti dopo la configurazione delle funzioni di autocompletamento di zsh.