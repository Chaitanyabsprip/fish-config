set rustdir $HOME/Projects/Languages/Rust

function rust -a dir
  cd $rustdir/(echo $dir || echo "/")
end
