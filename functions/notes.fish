set notesdir $HOME/Projects/notes

function notes -a note
    cd $notesdir/(echo $note || echo "/")
end
