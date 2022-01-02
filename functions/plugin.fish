set pluginsoptdir  $HOME/.local/share/nvim/site/pack/packer/opt
set pluginsstartdir  $HOME/.local/share/nvim/site/pack/packer/start

function plugin -a plugin
  cd $pluginsoptdir/(echo $plugin) 2> /dev/null || cd $pluginsstartdir/(echo $plugin || echo "/") 2> /dev/null
  if test $status -ne 0
    echo "Could not find plugin $plugin"
  end
end
