set notesdir $HOME/Projects/Notes

function notes -a note
  cd $notesdir/(echo $note || echo "/")
end
