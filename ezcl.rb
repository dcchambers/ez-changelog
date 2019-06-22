require 'git'

puts '                ~ ezcl ~                 '
puts 'Generating a changelog from your git log.'
print 'Enter CHANGELOG file name: '
filename = gets.chomp
print 'Enter path to git repo: '
path_to_git_repo = gets.chomp

changelog_file = File.open(filename, "w")
changelog_file.puts '# CHANGELOG'
changelog_file.puts #newline
changelog_file.print '## '
changelog_file.puts Time.new.strftime("%Y-%m-%d %H:%M:%S")

g = Git.open(path_to_git_repo)
g.log.each {|l| changelog_file.puts "- "+l.message }

changelog_file.close
