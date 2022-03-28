
# Alias
alias ls='ls --color=auto'
alias ll='ls -alFh'
alias del='trash-put'
alias signal='flatpak run org.signal.Signal'
alias discord='flatpak run com.discordapp.Discord'
alias dropbox='flatpak run com.dropbox.Client'
alias nextcloud='flatpak run com.nextcloud.desktopclient.nextcloud'
alias onlyoffice='flatpak run org.onlyoffice.desktopeditors'
alias anydesk='flatpak run com.anydesk.Anydesk'
alias skype='flatpak run com.skype.Client'
alias zoom='flatpak run us.zoom.Zoom'

# history
HISTTIMEFORMAT="%F %T "
HISTCONTROL=ignoredups

# Path (.bashrc is an external ln -s)
#PATH="$HOME/data/bin:$PATH"
PATH=$PATH:"$HOME/data/bin"
PATH=$PATH:"$HOME/.local/bin"


