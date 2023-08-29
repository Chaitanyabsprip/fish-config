set golangdir $HOME/projects/languages/go

function golang -a dir
    cd $golangdir/(echo $dir || echo "/")
end
