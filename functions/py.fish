set pydir $HOME/Projects/languages/python

function py -a dir
    cd $pydir/(echo $dir || echo "/")
end
