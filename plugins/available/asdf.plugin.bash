cite about-plugin
about-plugin 'enable asdf, if you are using it'

if [ -d $HOME/.asdf ]; then
    . $HOME/.asdf/asdf.sh
    . $HOME/.asdf/completions/asdf.bash
fi
