# Project:  fd-zsh
# File:     exa-zsh-plugin.zsh
# Author:   Mohamed Elashri
# Email:    muhammadelashri@gmail.com


if ! (( $+commands[fd] )); then
  print "zsh-fd-plugin: fd not found on path. Please install fd before using this plugin." >&2
  return 1
fi

# general use aliases 
alias find='fd'
alias fd='fd --color always ' # Always colorize output by default
alias fd_details='fd  --list-details' # list details
alias fd_ext='fd --extension' # Filter by file extension, insert <extension> after this command
alias fd_name='fd --glob' # Filter by file name (default: regular expression)
alias fd_case='fd --ignore-case' # --ignore-case, -i: Ignore case when searching
alias fd_hidden='fd --hidden' # --hidden, -H: Search hidden files and directories
alias fd_abs='fd --absolute-path' # --absolute-path, -a: Show absolute instead of relative paths
alias fd_exec='fd --exec' # --exec, -x: Execute command for each search result
alias fd_execlude='fd --exclude' # --exclude, -E: Exclude files and directories that match the given glob pattern <pattern>
alias fd_size='fd --size' # --size, -s: Filter by file size (insert <size> after this command)
alias fd_owner='fd --owner' # --owner, -u: Filter by file owner (insert <user:group> after this command)
alias fd_symbolic='fd --follow' # --follow,  Follow symbolic links
alias fd_version='fd --version' # --version,  Show version information
alias fd_help='fd --help' # --help,  Show help message