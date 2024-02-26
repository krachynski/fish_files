function cat --wraps='bat' --wraps='batcat' -d "Use bat instead of cat unless it's a Markdown file, then use mdless"
	if not test -f $argv
		echo "File not found: $argv"
		return 0
	end
	set -f batcmd bat
	if not type --quiet $batcmd
		set -f batcmd batcat
	end
	command $batcmd --style plain --theme OneHalfDark $argv
end
