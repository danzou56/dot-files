alias ls="ls -F"
alias l="ls"

function latex-reverse
  set drive (string lower (string sub --length 1 $argv[2]))
  set newpath (string sub -s 4 (string replace -a "\\" "/" $argv[2]))
  nvr --servername /tmp/latexsocket --remote-expr "vimtex#view#reverse_goto($argv[1], '/mnt/$drive/$newpath')"
#  nvr --servername /tmp/nvim-latex-socket --remote-silent +$argv[1] "/mnt/$drive/$newpath" 

# wsl nvr --remote "%l" "%f"

# wsl latex-reverse "%l" "%f"

# cmd /c for /F %i in ('type C:\USERS\Dan\AppData\Local\Temp\curnvimserver.txt') do wsl nvr --server-name %i -c "normal! zzzv" +"%l" (wslpath -u "%f")
end

function SumatraPDF
  echo $argv
  "/mnt/c/Program Files/SumatraPDF/SumatraPDF.exe" $argv
end
  
