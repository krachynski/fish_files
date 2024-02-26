function la --wraps='exa' --wraps='eza' --description 'Displays a list of files in a directory using a long format'
	if type --quiet eza
		eza -Alh --group-directories-first --git --colour=auto $argv
	else
		exa -alFh --group-directories-first --git --colour=auto $argv
	end
end
