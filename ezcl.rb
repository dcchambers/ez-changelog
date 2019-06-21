require 'git'

path_to_git_repo = '.'

puts 'ezcl - Generating a changelog from your git log.'

g = Git.open(path_to_git_repo)

puts g.log
