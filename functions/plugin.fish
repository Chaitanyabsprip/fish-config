set pluginsdir $HOME/.local/share/nvim/lazy/

function plugin -a plugin
    cd $pluginsdir/(echo $plugin || echo "/") 2>/dev/null
    if test $status -ne 0
        echo "Could not find plugin $plugin"
    end
end
