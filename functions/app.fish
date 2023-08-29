set appdir $HOME/Projects/apps

function app -a dir
    cd $appdir/(echo "$dir" || echo "/")
end
