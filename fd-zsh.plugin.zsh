# Project:  fd-zsh
# File:     exa-zsh-plugin.zsh
# Author:   Mohamed Elashri
# Email:    mail@elashri.com

# Unalias existing aliases if they exist
unalias find 2>/dev/null
unalias fd 2>/dev/null

# Check if fd or fdfind is installed
if (( $+commands[fd] )); then
  alias fd='fd'
elif (( $+commands[fdfind] )); then
  alias fd='fdfind'
else
  print "zsh-fd-plugin: neither 'fd' nor 'fdfind' found on path. Please install 'fd' before using this plugin." >&2
  return 1
fi

# General use aliases
alias find='fd'
alias fd='fd --color always' # Always colorize output by default
alias fd_details='fd --list-details' # List details
alias fd_ext='fd --extension' # Filter by file extension, insert <extension> after this command
alias fd_name='fd --glob' # Filter by file name (default: regular expression)
alias fd_case='fd --ignore-case' # Ignore case when searching
alias fd_hidden='fd --hidden' # Search hidden files and directories
alias fd_abs='fd --absolute-path' # Show absolute instead of relative paths
alias fd_exec='fd --exec' # Execute command for each search result
alias fd_exclude='fd --exclude' # Exclude files and directories that match the given glob pattern <pattern>
alias fd_size='fd --size' # Filter by file size (insert <size> after this command)
alias fd_owner='fd --owner' # Filter by file owner (insert <user:group> after this command)
alias fd_symbolic='fd --follow' # Follow symbolic links
alias fd_version='fd --version' # Show version information
alias fd_help='fd --help' # Show help message
