set appdir $HOME/Projects/ApplicationDevelopment 

function app -a dir
  cd $appdir/(echo "$dir" || echo "/")
end
