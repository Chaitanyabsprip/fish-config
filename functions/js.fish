set jsdir $HOME/Projects/Languages/JavaScript

function js -a dir
  cd $jsdir/(echo $dir || echo "/")
end
