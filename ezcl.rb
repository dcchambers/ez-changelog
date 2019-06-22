require 'git'

path_to_git_repo = '.'

puts 'ezcl - Generating a changelog from your git log.'
print 'Enter CHANGELOG file name: '
filename = gets.chomp
changelog_file = File.open(filename, "w")
changelog_file.puts '# CHANGELOG'
changelog_file.puts #newline

g = Git.open(path_to_git_repo)
g.log.each {|l| changelog_file.puts l.message }

changelog_file.close
