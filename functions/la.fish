function la --wraps='exa' --description 'Displays a list of files in a directory using a long format'
  exa -alFh --group-directories-first --git --colour=auto $argv
end
