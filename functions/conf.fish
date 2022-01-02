set confdir $HOME/.config

function conf -a dir
  cd $confdir/(echo $dir || echo /)
end

