set forkdir $HOME/Projects/forks

function fork -a dir
    cd $forkdir/(echo $dir || echo "/")
end
