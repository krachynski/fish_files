function cat -d "Use bat instead of cat unless it's a Markdown file, then use mdless"
	if not test -f $argv
		echo "File not found: $argv"
		return 0
	end
	command batcat --style plain --theme OneHalfDark $argv
end
