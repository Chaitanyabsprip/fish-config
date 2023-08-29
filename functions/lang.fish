set langdir $HOME/projects/languages

function lang -a dir
    cd $langdir/(echo $dir || echo "/")
end
