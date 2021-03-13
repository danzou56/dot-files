alias ls="exa -h -F --group-directories-first --icons --color=always"
alias wopen="wslview"

function cat
  if test (count $argv) -gt 1
    batcat $argv
  else
    if test -d $argv[1]
      echo "`$argv[1]` was a directory! Doing `ls $argv` instead"
      ls $argv
    else
      batcat $argv
    end
  end
end
