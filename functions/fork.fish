set forkdir $HOME/Projects/Forks

function fork -a dir
  cd $forkdir/(echo $dir || echo "/")
end
