load_dotenv() {
  for envfile in .env .env.local; do
    [[ -f $envfile ]] && source $envfile
  done
}

autoload -Uz add-zsh-hook
add-zsh-hook chpwd load_dotenv

load_dotenv