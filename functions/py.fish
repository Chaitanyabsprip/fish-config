set pydir $HOME/Projects/Languages/Python

function py -a dir
  cd $pydir/(echo $dir || echo "/")
end
