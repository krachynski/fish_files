function cat -d "Use bat instead of cat unless it's a Markdown file, then use mdless"
	if not test -f $argv
		echo "File not found: $argv"
		return 0
	end
	set -l batcmd bat
	if not type --quiet bat
		set -l batcmd batcat
	end
	command $batcmd --style plain --theme OneHalfDark $argv
end
