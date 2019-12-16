function theme_power
{
    unset -m 'GEOMETRY_*'
    [[ -f $P10K_CONFIG ]] || source $ZSH/custom/themes/powerlevel10k/powerlevel10k.zsh-theme
    source $ZSH/custom/themes/p10k_configs/dot_p10k_classic.zsh
}
function theme_power_lean
{
    unset -m 'GEOMETRY_*'
    [[ -f $P10K_CONFIG ]] || source $ZSH/custom/themes/powerlevel10k/powerlevel10k.zsh-theme
    source $ZSH/custom/themes/p10k_configs/dot_p10k_lean.zsh
}
function theme_power_terse
{
    unset -m 'GEOMETRY_*'
    [[ -f $P10K_CONFIG ]] || source $ZSH/custom/themes/powerlevel10k/powerlevel10k.zsh-theme
    source $ZSH/custom/themes/p10k_configs/dot_p10k_terse.zsh
}
function theme_power_rainbow
{
    unset -m 'GEOMETRY_*'
    [[ -f $P10K_CONFIG ]] || source $ZSH/custom/themes/powerlevel10k/powerlevel10k.zsh-theme
    source $ZSH/custom/themes/p10k_configs/dot_p10k_rainbow.zsh
}

function theme_geomy
{
   unset -m '$POWERLEVEL*'
   source $ZSH/custom/themes/geometry/geometry.zsh-theme
}

function theme_random
{
  unset -m 'GEOMETRY_*'
  unset -m '$POWERLEVEL*'
  unset -m '$LPROMPT*'
  unset -m '$RPROMPT*'
  themes=($ZSH/themes/*zsh-theme)
  N=${#themes[@]}
  ((N=(RANDOM%N)+1))
  RANDOM_THEME=${themes[$N]}
  source "$RANDOM_THEME"
  echo "[oh-my-zsh] My random theme '$RANDOM_THEME' loaded..."
  export THEME="$RANDOM_THEME"
}

