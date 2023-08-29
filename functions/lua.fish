set luadir $HOME/projects/languages/lua

function lua -a dir
    cd $luadir/(echo $dir || echo "/")
end
